package com.springboot.jobkorea.web.controller;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RestController;

import com.springboot.jobkorea.config.auth.PrincipalDetail;
import com.springboot.jobkorea.service.CompanyService;
import com.springboot.jobkorea.web.dto.company.CompanyPwReqDto;
import com.springboot.jobkorea.web.dto.company.CompanyReqDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@RestController
public class CompanyController {
	
	private final CompanyService companyService;
	
	@PutMapping("/accounts/company-edit")
	public boolean companyEdit(@AuthenticationPrincipal PrincipalDetail principalDetail, CompanyReqDto companyReqDto) {
		return companyService.updateCompanyData(principalDetail, companyReqDto);
	}
	
	@PutMapping("/accounts/company-pw-ch")
	// service 타입과 같게
	public Object companyPwEdit(@AuthenticationPrincipal PrincipalDetail principalDetail, CompanyPwReqDto companyPwReqDto) {
		return companyService.updateCompanyPw(principalDetail, companyPwReqDto);
	}
	
}
