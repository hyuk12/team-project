package com.springboot.jobkorea.service;

import com.springboot.jobkorea.config.auth.PrincipalDetail;
import com.springboot.jobkorea.web.dto.accounts.InfoReqDto;
import com.springboot.jobkorea.web.dto.accounts.InfoRespDto;
import com.springboot.jobkorea.web.dto.accounts.PasswordReqDto;
import com.springboot.jobkorea.web.dto.accounts.PasswordRespDto;

public interface AccountsService {
	public PasswordRespDto updatePasssword(PrincipalDetail principalDetail, PasswordReqDto passwordReqDto);
	public boolean updateInfo(PrincipalDetail principalDetail, InfoReqDto infoReqDto);
}
