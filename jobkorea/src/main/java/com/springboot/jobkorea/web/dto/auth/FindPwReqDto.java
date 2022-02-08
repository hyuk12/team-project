package com.springboot.jobkorea.web.dto.auth;

import com.springboot.jobkorea.domain.user.Company;
import com.springboot.jobkorea.domain.user.User;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class FindPwReqDto {
	private String member;
	
	private String name;
	private String username;

//	private String companyName;
//	private String companyUsername;
	
	public User toPersonalEntity() {
		return User.builder()
					.name(name)
					.username(username)
					.build();
	}

	public Company toCompanyEntity() {
		return Company.builder()
				.name(name)
				.username(username)
				.build();
	}
}
