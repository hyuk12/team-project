package com.springboot.jobkorea.web.dto.accounts;

import com.springboot.jobkorea.domain.user.User;

import lombok.Data;

@Data
public class InfoRespDto {
	private String username;
	private String email;
	private String phone;
	
	public User toEntity(int id) {
		return User.builder()
					.username(username)
					.email(email)
					.phone(phone)
					.build();
	}
}
