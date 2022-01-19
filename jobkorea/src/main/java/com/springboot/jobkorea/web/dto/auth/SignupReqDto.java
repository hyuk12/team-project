package com.springboot.jobkorea.web.dto.auth;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.springboot.jobkorea.domain.user.User;

import lombok.Data;

@Data
public class SignupReqDto {
	
	@NotBlank
	private String name;
	
	@NotBlank
	@Size(min=4, max=10)
	private String username;
	
	@NotBlank
	@Size(min=7, max=20)
	private String password;
	
	@NotBlank
	private String email;
	
	@NotBlank
	private String phone;
	
	public User toEntity() {
		return User.builder()
				.name(name)
				.username(username)
				.password(new BCryptPasswordEncoder().encode(password))
				.role("ROLE_USER")
				.email(email)
				.phone(phone)
				.build();
	}
}
