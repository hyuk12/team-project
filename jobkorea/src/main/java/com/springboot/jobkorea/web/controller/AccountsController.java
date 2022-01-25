package com.springboot.jobkorea.web.controller;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RestController;

import com.springboot.jobkorea.config.auth.PrincipalDetail;
import com.springboot.jobkorea.service.AccountsService;
import com.springboot.jobkorea.web.dto.accounts.InfoReqDto;
import com.springboot.jobkorea.web.dto.accounts.PasswordReqDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@RestController
public class AccountsController {
	
	private final AccountsService accountsService;
	
	@PutMapping("/accounts/info/change/personal")
	public Object infoChange(@AuthenticationPrincipal PrincipalDetail principalDetail, InfoReqDto infoReqDto) {
		return accountsService.updateInfo(principalDetail, infoReqDto);
	}
	
	@PutMapping("/accounts/password/change/personal")
	public Object passwordChange(@AuthenticationPrincipal PrincipalDetail principalDetail, PasswordReqDto passwordReqDto) {
		return accountsService.updatePasssword(principalDetail, passwordReqDto);
	}
}
