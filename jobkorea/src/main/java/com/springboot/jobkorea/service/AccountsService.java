package com.springboot.jobkorea.service;

import com.springboot.jobkorea.config.auth.PrincipalDetail;
import com.springboot.jobkorea.web.dto.accounts.PasswordReqDto;
import com.springboot.jobkorea.web.dto.accounts.PasswordRespDto;
import com.springboot.jobkorea.web.dto.accounts.ProfileReqDto;

public interface AccountsService {
	public boolean usernameCheck(String username);
	public boolean updateUser(PrincipalDetail principalDetail ,ProfileReqDto profileReqDto);
	
	public PasswordRespDto updatePassword(PrincipalDetail principalDetail, PasswordReqDto passwordReqDto);
}
