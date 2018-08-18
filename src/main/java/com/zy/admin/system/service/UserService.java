package com.zy.admin.system.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.zy.admin.system.exception.BusinessException;
import com.zy.admin.system.model.Role;
import com.zy.admin.system.model.User;
import com.zy.admin.system.model.UserRole;
import com.zy.admin.system.repository.UserMapper;
import com.zy.admin.system.repository.UserRoleMapper;
import com.zy.admin.system.utils.StringUtil;
import com.zy.admin.system.utils.results.PageResult;

@Service
public class UserService {

	private final UserMapper userMapper;
	
	private final UserRoleMapper userRoleMapper;


	
	public UserService(UserMapper userMapper, UserRoleMapper userRoleMapper) {
		this.userMapper = userMapper;
		this.userRoleMapper = userRoleMapper;
	}



	public PageResult<User> list(int pageNum, int pageSize, boolean showDelete, String column, String value) {
		Wrapper<User> wrapper =new EntityWrapper<>();
		if(StringUtil.isNotBlank(column)) {
			wrapper.like(column, value);
		}
		if(!showDelete) {
			  wrapper.eq("state", 0);
		}
		Page<User> userPage = new Page<>(pageNum, pageSize);
		List<User> userList = userMapper.selectPage(userPage, wrapper.orderBy("create_time", true));
	    if (userList != null && userList.size() > 0) {
	    	 List<UserRole> userRoles = userRoleMapper.selectByUserIds(getUserIds(userList));
	    	   for (User one : userList) {
	    		   List<Role> tempURs = new ArrayList<>();
	    		   for (UserRole ur : userRoles) {
	                    if (one.getUserId().equals(ur.getUserId())) {
	                        tempURs.add(new Role(ur.getRoleId(), ur.getRoleName()));
	                    }
	                }
	                one.setRoles(tempURs);
	    	   }
	    }
		
	    return new PageResult<>(userPage.getTotal(), userList);
	}
	

    
    @Transactional(rollbackFor = Exception.class)
    public boolean add(User user) throws BusinessException {
        if (userMapper.getByUsername(user.getUsername()) != null) {
            throw new BusinessException("账号已经存在");
        }
        String finalSecret = "{bcrypt}" + new BCryptPasswordEncoder().encode(user.getPassword());
        user.setPassword(finalSecret);
        user.setState(0);
        user.setCreateTime(new Date());
        boolean rs = userMapper.insert(user) > 0;
        if (rs) {
            List<Integer> roleIds = getRoleIds(user.getRoles());
            if (userRoleMapper.insertBatch(user.getUserId(), roleIds) < roleIds.size()) {
                throw new BusinessException("添加失败，请重试");
            }
        }
        return rs;
    }
    
    
    private List<Integer> getUserIds(List<User> userList) {
        List<Integer> userIds = new ArrayList<>();
        for (User one : userList) {
            userIds.add(one.getUserId());
        }
        return userIds;
    }
    
    /**
     * 添加用户角色
     */
    private List<Integer> getRoleIds(List<Role> roles) {
        List<Integer> rs = new ArrayList<>();
        if (roles != null && roles.size() > 0) {
            for (Role role : roles) {
                rs.add(role.getRoleId());
            }
        }
        return rs;
    }
	
}
