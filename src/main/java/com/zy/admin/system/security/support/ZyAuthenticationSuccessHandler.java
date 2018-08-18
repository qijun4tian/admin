package com.zy.admin.system.security.support;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.zy.admin.system.utils.results.JsonResult;

import lombok.extern.slf4j.Slf4j;

@Component
@Slf4j
public class ZyAuthenticationSuccessHandler  extends SimpleUrlAuthenticationSuccessHandler{
	
	@Autowired
	private ObjectMapper objectMapper;

	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
		// TODO Auto-generated method stub
	     log.info("登入成功");
		 JsonResult result =new JsonResult();
		 result.setCode(200);
		 result.setMessage("登录成功");
		 response.setStatus(HttpStatus.OK.value());
		 response.setContentType("application/json;charset=UTF-8");
		 response.getWriter().write(objectMapper.writeValueAsString(result));
	}

}
