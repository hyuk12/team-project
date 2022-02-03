package com.springboot.jobkorea.service;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.springboot.jobkorea.config.auth.PrincipalDetail;
import com.springboot.jobkorea.domain.company.CompanyRepository;
import com.springboot.jobkorea.domain.user.Company;
import com.springboot.jobkorea.domain.user.UserRepository;
import com.springboot.jobkorea.web.dto.company.CompanyPwReqDto;
import com.springboot.jobkorea.web.dto.company.CompanyPwRespDto;
import com.springboot.jobkorea.web.dto.company.CompanyReqDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class CompanyServiceImpl implements CompanyService{
	
	private final UserRepository userRepository;
	private final CompanyRepository companyRepository;
	
	@Override
	public boolean usernameCheckByUsername(String username) {
		int result = companyRepository.usernameCheckByUsername(username);
		
		if (result == 0) {
			return true;
		} else {
			return false;
		}
	}
	
	@Override
	public boolean updateCompanyData(PrincipalDetail principalDetail, CompanyReqDto companyReqDto) {
		int id = principalDetail.getCompany().getComp_id();
		
		Company companyEntity = companyReqDto.toCompanyEntity(id);
		
		int result = 0;
		result += companyRepository.updateCompanyById(companyEntity);
		
		if (result == 1) {
			principalDetail.setCompany(userRepository.getCompanyByUsername(principalDetail.getUsername()));
			return true;
		} else {
			return false;
		}
		
	}
	
	public boolean passwordCheck(String principalPassword, String password) {
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder(); 
		
		return encoder.matches(password, principalPassword);
	}

	@Override
	public CompanyPwRespDto updateCompanyPw(PrincipalDetail principalDetail, CompanyPwReqDto companyPwReqDto) {
		boolean prePasswordFlag = passwordCheck(principalDetail.getPassword(), companyPwReqDto.getPrePassword());
		boolean newPasswordFlag = passwordCheck(principalDetail.getPassword(), companyPwReqDto.getNewPassword());
		
		CompanyPwRespDto companyPwRespDto = new CompanyPwRespDto();
		
		if (prePasswordFlag == false) {
			companyPwRespDto.setCode(210);
			companyPwRespDto.setMessage("이전 비밀번호가 일치하지않습니다.");
			
		} else if (newPasswordFlag == true ) {
			companyPwRespDto.setCode(220);
			companyPwRespDto.setMessage("새 비밀번호와 이전 비밀번호가 같습니다.");
			
		} else {
			Company Entity = companyPwReqDto.toCompanyPwEntity(principalDetail.getCompany().getComp_id());
			int result = companyRepository.updateCompanyPwById(Entity);
			
			if (result == 1) {
				companyPwRespDto.setCode(200);
				companyPwRespDto.setMessage("비밀번호 변경 완료");
				principalDetail.getCompany().setPassword(Entity.getPassword());
			}
		}
		
		return companyPwRespDto;
	}


}
