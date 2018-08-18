package com.zy.admin.system.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zy.admin.system.exception.ParameterException;
import com.zy.admin.system.model.Role;
import com.zy.admin.system.model.User;
import com.zy.admin.system.service.RoleService;
import com.zy.admin.system.service.UserService;
import com.zy.admin.system.utils.StringUtil;
import com.zy.admin.system.utils.results.JsonResult;
import com.zy.admin.system.utils.results.PageResult;

@Controller
@RequestMapping("/system/user")
public class UserController extends BaseController {

	private final RoleService roleService;
	private final UserService userService;

	public UserController(RoleService roleService, UserService userService) {
		this.roleService = roleService;
		this.userService = userService;
	}

	@RequestMapping
	public String user(Model model) {
		List<Role> roles = roleService.list(false);
		model.addAttribute("roles", roles);
		return "system/user";
	}
	
	 @RequestMapping("/editForm")
	    public String addUser(Model model) {
	        List<Role> roles = roleService.list(false);
	        model.addAttribute("roles", roles);
	        return "system/user_form";
	    }


	@ResponseBody
	@RequestMapping("/list")
	@PreAuthorize("@sec.hasPermission('user:view')")
	public PageResult<User> list(Integer page, Integer limit, String searchKey, String searchValue) {
		if (page == null) {
			page = 0;
			limit = 0;
		}
		if (StringUtil.isBlank(searchValue)) {
			searchKey = null;
		}
		return userService.list(page, limit, true, searchKey, searchValue);
	}
	
	
    @ResponseBody
    @RequestMapping("/add")
    public JsonResult add(User user, String roleId) {
        user.setRoles(getRoles(roleId));
        user.setPassword("123456");
        if (userService.add(user)) {
            return JsonResult.ok("添加成功");
        } else {
            return JsonResult.error("添加失败");
        }
    }
    
    @ResponseBody
    @RequestMapping("/update")
    public JsonResult update(User user, String roleId) {
        user.setRoles(getRoles(roleId));
        if (userService.update(user)) {
            return JsonResult.ok("修改成功");
        } else {
            return JsonResult.error("修改失败");
        }
    }
    
    @ResponseBody
    @RequestMapping("/updateState")
    public JsonResult updateState(Integer userId, Integer state) {
        if (userService.updateState(userId, state)) {
            return JsonResult.ok();
        } else {
            return JsonResult.error();
        }
    }
    
    @ResponseBody
    @RequestMapping("/restPsw")
    public JsonResult resetPsw(Integer userId) {
        if (userService.updatePsw(userId,"123456")) {
            return JsonResult.ok("重置成功");
        } else {
            return JsonResult.error("重置失败");
        }
    }
    
    
    private List<Role> getRoles(String roleStr) {
        List<Role> roles = new ArrayList<>();
        String[] split = roleStr.split(",");
        for (String t : split) {
            if (t.equals("1")) {
                throw new ParameterException("不能添加超级管理员");
            }
            roles.add(new Role(Integer.parseInt(t)));
        }
        return roles;
    }
	

}
