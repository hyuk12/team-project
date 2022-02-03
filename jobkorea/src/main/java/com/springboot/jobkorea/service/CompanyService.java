package com.springboot.jobkorea.service;

import com.springboot.jobkorea.config.auth.PrincipalDetail;
import com.springboot.jobkorea.web.dto.company.CompanyPwReqDto;
import com.springboot.jobkorea.web.dto.company.CompanyPwRespDto;
import com.springboot.jobkorea.web.dto.company.CompanyReqDto;

public interface CompanyService {
	public boolean usernameCheckByUsername(String username);
	public boolean updateCompanyData(PrincipalDetail principalDetail, CompanyReqDto companyReqDto);
	public CompanyPwRespDto updateCompanyPw(PrincipalDetail principalDetail, CompanyPwReqDto companyPwReqDto);
}
