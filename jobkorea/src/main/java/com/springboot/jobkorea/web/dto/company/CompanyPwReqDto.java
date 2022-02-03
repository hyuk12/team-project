package com.springboot.jobkorea.web.dto.company;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.springboot.jobkorea.domain.company.CompanyDtl;
import com.springboot.jobkorea.domain.user.Company;

import lombok.Builder;
import lombok.Data;

@Builder
@Data
public class CompanyPwReqDto {
	// js의 name과 같아야함
	private String prePassword;
	private String newPassword;
	
	public Company toCompanyPwEntity(int id) {
		return Company.builder()
						.id(id)
						.password(new BCryptPasswordEncoder().encode(newPassword))
						.build();
	}
}
