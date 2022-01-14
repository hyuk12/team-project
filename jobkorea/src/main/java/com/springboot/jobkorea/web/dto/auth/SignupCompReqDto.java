package com.springboot.jobkorea.web.dto.auth;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

import com.springboot.jobkorea.domain.user.Company;
import com.springboot.jobkorea.domain.user.User;

import lombok.Data;

@Data
public class SignupCompReqDto {
	
	@NotBlank
	private String comptype;
	
	@NotBlank
	private String compnum;
	
	@NotBlank
	private String compname;
	
	@NotBlank
	private String ceoname;
	
	
	
	@NotBlank
	@Size(min=4, max=10)
	private String username;
	
	@NotBlank
	@Size(min=7, max=13)
	private String password;
	
	@NotBlank
	private String name;
	
	@NotBlank
	private String phone;
	
	@NotBlank
	private String email;
	
	
	
	public Company toEntity() {
		return Company.builder()
				.comptype(comptype)
				.compnum(compnum)
				.compname(compname)
				.ceoname(ceoname)
				.username(username)
				.password(password)
				.role("ROLE_USER")
				.name(name)
				.phone(phone)
				.email(email)
				.build();
	}
}
