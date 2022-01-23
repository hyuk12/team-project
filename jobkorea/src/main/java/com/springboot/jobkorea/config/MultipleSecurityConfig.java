package com.springboot.jobkorea.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.Order;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@EnableWebSecurity
@Configuration
@EnableGlobalMethodSecurity(prePostEnabled = true, securedEnabled = true)
public class MultipleSecurityConfig  {
	
	

	@Bean
	public BCryptPasswordEncoder encoder() {
		return new BCryptPasswordEncoder();
	}
	
	@Order(1)
	@Configuration
	public static class PersonalSecurityconfiguration extends WebSecurityConfigurerAdapter{
		
		
		@Override
		protected void configure(HttpSecurity http) throws Exception {
			http.csrf().disable();
			http.authorizeRequests()
				.antMatchers("/myIndex", "/", "/mypage/**")
					.authenticated()
				.anyRequest()
				.permitAll()
				.and()
				.formLogin()
				.loginPage("/auth/signin")
				.loginProcessingUrl("/auth/signin")
				.defaultSuccessUrl("/");
		}
	}
	
	
	
	
}
