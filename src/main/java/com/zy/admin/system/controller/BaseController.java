package com.zy.admin.system.controller;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;

import com.zy.admin.system.model.User;

public class BaseController {
	
	public User getLoginUser(){
		Authentication authentication =	SecurityContextHolder.getContext().getAuthentication();
		if(authentication != null) {
			Object object =  authentication.getPrincipal();
			if(object != null) {
				return (User) object;
			}
		}
		return null;
	}
	
	   /**
     * 获取当前登录的userId
     */
    public Integer getLoginUserId() {
        User loginUser = getLoginUser();
        return loginUser == null ? null : loginUser.getUserId();
    }

    /**
     * 获取当前登录的username
     */
    public String getLoginUserName() {
        User loginUser = getLoginUser();
        return loginUser == null ? null : loginUser.getUsername();
    }
    
    protected String redirect(String url) {
		return new StringBuilder("redirect:").append(url).toString();
	}

}

    