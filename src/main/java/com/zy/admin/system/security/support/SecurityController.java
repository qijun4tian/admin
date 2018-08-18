package com.zy.admin.system.security.support;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;

import org.springframework.http.HttpStatus;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.savedrequest.HttpSessionRequestCache;
import org.springframework.security.web.savedrequest.RequestCache;
import org.springframework.security.web.savedrequest.SavedRequest;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import lombok.extern.slf4j.Slf4j;

@RestController
@Slf4j
/**
 * 
 * @author zy 
 * @date 2018-08-18 16:57
 */
public class SecurityController {

	private RequestCache requestCache = new HttpSessionRequestCache();
	
	private RedirectStrategy RedirectStrategy =new DefaultRedirectStrategy();
	
	/**
	 * 当请求需要认证时跳转到这里
	 * @param request
	 * @param response
	 * @return
	 * @throws IOException 
	 */
	@RequestMapping("/authentication/require")
	@ResponseStatus(code=HttpStatus.UNAUTHORIZED)
    public SimpleResponse requireAuthentication(HttpServletRequest request,HttpServletResponse response) throws IOException{
    	SavedRequest savedRequest = requestCache.getRequest(request, response);
    	if(savedRequest != null){
    		String targe = savedRequest.getRedirectUrl();
    		log.info("引发跳转的请求是:"+targe);
    		if(StringUtils.endsWithIgnoreCase(targe, ".html")){
    			RedirectStrategy.sendRedirect(request, response,"/login.html");
    		}
    		
    	}  	
    	return new SimpleResponse("访问的服务需要身份认证，请引导用户到登录页");
    }

}
