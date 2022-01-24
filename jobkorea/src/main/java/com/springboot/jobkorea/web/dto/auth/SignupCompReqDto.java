package com.springboot.jobkorea.web.dto.auth;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

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
	
	
	
	
	
	
	
	public Company toEntity() {
		return Company.builder()
				.compType(comptype)
				.compNum(compnum)
				.compName(compname)
				.ceoName(ceoname)
				
				.build();
	}
}
