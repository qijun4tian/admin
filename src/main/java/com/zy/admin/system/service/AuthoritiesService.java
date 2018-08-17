package com.zy.admin.system.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.zy.admin.system.model.Authorities;
import com.zy.admin.system.repository.AuthoritiesMapper;

@Service
public class AuthoritiesService {

	private final AuthoritiesMapper authoritiesMapper;

	public AuthoritiesService(AuthoritiesMapper authoritiesMapper) {
		this.authoritiesMapper = authoritiesMapper;
	}

	public List<Authorities> listByUserId(Integer userId) {
		return authoritiesMapper.listByUserId(userId);
	}

}
