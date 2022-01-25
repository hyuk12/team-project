package com.springboot.jobkorea.web.dto.accounts;

import javax.validation.constraints.NotBlank;

import com.springboot.jobkorea.domain.user.User;

import lombok.Data;

@Data
public class InfoReqDto {
	@NotBlank
	private String username;
	@NotBlank
	private String email;
	@NotBlank
	private String phone;
	
	public User toEntity(int id, String username) {
		return User.builder()
					.id(id)
					.username(username)
					.email(email)
					.phone(phone)
					.build();
	}
}
