package com.zy.admin.system.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.zy.admin.system.model.Role;
import com.zy.admin.system.repository.RoleMapper;

@Service
public class RoleService {
	
	private final  RoleMapper roleMapper;
	public RoleService(RoleMapper roleMapper) {
		this.roleMapper = roleMapper;
	}
	
	public List<Role> list(boolean showDelete) {
        Wrapper wrapper = new EntityWrapper();
        if (!showDelete) {
            wrapper.eq("is_delete", 0);
        }
        return roleMapper.selectList(wrapper.orderBy("create_time", true));
    }
	 
	 

}
