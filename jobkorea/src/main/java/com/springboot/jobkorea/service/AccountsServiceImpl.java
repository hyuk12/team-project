package com.springboot.jobkorea.service;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.springboot.jobkorea.config.auth.PrincipalDetail;
import com.springboot.jobkorea.domain.user.User;
import com.springboot.jobkorea.domain.user.UserRepository;
import com.springboot.jobkorea.web.dto.accounts.PasswordReqDto;
import com.springboot.jobkorea.web.dto.accounts.PasswordRespDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class AccountsServiceImpl implements AccountsService{
	
	private final UserRepository userRepository;
	
	public boolean passwordCheck(String principalPassword, String password) {
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		
		return encoder.matches(password,principalPassword);
	}
	
	@Override
	public PasswordRespDto updatePasssword(PrincipalDetail principalDetail, PasswordReqDto passwordReqDto) {
		
		boolean prePasswordChcekFlag = passwordCheck(principalDetail.getPassword(), passwordReqDto.getPrePassword());
		boolean newPasswordChcekFlag = passwordCheck(principalDetail.getPassword(), passwordReqDto.getNewPassword());
		PasswordRespDto passwordRespDto = new PasswordRespDto();
		
		if (prePasswordChcekFlag == false) {
			// 이전 비밀번호가 일치하지 않음
			passwordRespDto.setCode(410);
			passwordRespDto.setMessage("이전 비밀번호가 일치하지않습니다.");
		} else if (newPasswordChcekFlag == true) {
			passwordRespDto.setCode(451);
			passwordRespDto.setMessage("새 비밀번호와 이전 비밀번호가 일치합니다.");
		} else {
			User userEntity = passwordReqDto.toEntity(principalDetail.getUsers().getId());
			int result = userRepository.updatePasswordById(userEntity);
			
			if (result == 1) {
				passwordRespDto.setCode(200);
				passwordRespDto.setMessage("비밀번호가 변경되었습니다.");
				principalDetail.getUsers().setPassword(userEntity.getPassword());
			}
		}
		
		return passwordRespDto;
	}

}
