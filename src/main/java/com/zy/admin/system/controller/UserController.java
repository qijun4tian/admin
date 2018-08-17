package com.zy.admin.system.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zy.admin.system.model.Role;
import com.zy.admin.system.service.RoleService;

@Controller
@RequestMapping("/system/user")
public class UserController extends BaseController {

	private final RoleService roleService;

	public UserController(RoleService roleService) {
		this.roleService = roleService;
	}

	@RequestMapping
	public String user(Model model) {
		List<Role> roles = roleService.list(false);
		model.addAttribute("roles", roles);
		return "system/user";
	}

}
