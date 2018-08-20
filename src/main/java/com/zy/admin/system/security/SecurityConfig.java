package com.zy.admin.system.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.session.InvalidSessionStrategy;
import org.springframework.security.web.session.SessionInformationExpiredStrategy;

import com.zy.admin.system.security.support.validate.ValidateCodeSecurityConfig;

@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true)
public class SecurityConfig  extends WebSecurityConfigurerAdapter{
	
	@Autowired
	AuthenticationFailureHandler zyAuthenticationFailureHandler;
	
	@Autowired
	AuthenticationSuccessHandler zyAuthenticationSuccessHandler;
	
	@Autowired
	private UserDetailsService userDetailsService;
	
	@Autowired
	private ValidateCodeSecurityConfig validateCodeSecurityConfig;
	
	@Autowired
	private SessionInformationExpiredStrategy sessionInformationExpiredStrategy;
	
	@Autowired
	private InvalidSessionStrategy invalidSessionStrategy;
	
	
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http
		.apply(validateCodeSecurityConfig)
		.and()
		  .formLogin()
		  .loginPage("/login")
		  .loginProcessingUrl("/authentication/form")
		  .successHandler(zyAuthenticationSuccessHandler)
		  .failureHandler(zyAuthenticationFailureHandler)
		.and()
		  .logout()
		  .logoutSuccessUrl("/login")
		  .deleteCookies("JSESSIONID")
		.and()
		  .userDetailsService(userDetailsService)
		  .authorizeRequests()
		  .antMatchers("/login").permitAll()
		  .antMatchers("/static/**").permitAll()
		  .antMatchers("/code/*").permitAll()
		  .anyRequest()
		  .authenticated()
		.and()
		  .sessionManagement()
		 .invalidSessionStrategy(invalidSessionStrategy)
		  .maximumSessions(1)
		  .maxSessionsPreventsLogin(false)
		  .expiredSessionStrategy(sessionInformationExpiredStrategy)
		.and()
		.and()
		  .csrf().disable();
		
	}
	
	
    @Bean
    public PasswordEncoder passwordEncoder() {
        return PasswordEncoderFactories.createDelegatingPasswordEncoder();
    }



	
	
}
