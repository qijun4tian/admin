package com.zy.admin.system.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.zy.admin.system.exception.BusinessException;
import com.zy.admin.system.model.Authorities;
import com.zy.admin.system.model.RoleAuthorities;
import com.zy.admin.system.repository.AuthoritiesMapper;
import com.zy.admin.system.repository.RoleAuthoritiesMapper;

@Service
public class AuthoritiesService {

	private final AuthoritiesMapper authoritiesMapper;
	private final RoleAuthoritiesMapper roleAuthoritiesMapper;

    public AuthoritiesService(AuthoritiesMapper authoritiesMapper, RoleAuthoritiesMapper roleAuthoritiesMapper) {
		this.authoritiesMapper = authoritiesMapper;
		this.roleAuthoritiesMapper = roleAuthoritiesMapper;
	}

	public List<Authorities> list() {
	   return authoritiesMapper.selectList(new EntityWrapper<Authorities>().orderBy("order_number", true));
	}

	public List<Authorities> listByUserId(Integer userId) {
		return authoritiesMapper.listByUserId(userId);
	}
	
	public List<Authorities> listByRoleIds(List<Integer> roleIds) {
        if (roleIds == null || roleIds.size() == 0) {
            return new ArrayList<>();
        }
        return authoritiesMapper.listByRoleIds(roleIds);
    }
	
	public List<Authorities> listByRoleId(Integer roleId) {
        return authoritiesMapper.listByRoleId(roleId);
    }
	
	@Transactional(rollbackFor = Exception.class)
    public boolean updateRoleAuth(Integer roleId, List<Integer> authIds) {
        roleAuthoritiesMapper.delete(new EntityWrapper<RoleAuthorities>().eq("role_id", roleId));
        if (authIds != null && authIds.size() > 0) {
            if (roleAuthoritiesMapper.insertRoleAuths(roleId, authIds) < authIds.size()) {
                throw new BusinessException("操作失败");
            }
        }
        return true;
    }

}
