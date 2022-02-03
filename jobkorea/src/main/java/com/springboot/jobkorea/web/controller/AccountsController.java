package com.springboot.jobkorea.web.controller;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.springboot.jobkorea.config.auth.PrincipalDetail;
import com.springboot.jobkorea.service.AccountsService;
import com.springboot.jobkorea.web.dto.accounts.PasswordReqDto;
import com.springboot.jobkorea.web.dto.accounts.ProfileReqDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@RestController
public class AccountsController {
	
	private final AccountsService accountsService;
	
	@PutMapping("/accounts/edit")
	public boolean profileEdit(@AuthenticationPrincipal PrincipalDetail principalDetail ,ProfileReqDto profileReqDto) {
		
		System.out.println(profileReqDto);
		return accountsService.updateUser(principalDetail, profileReqDto);
	}
	
	@GetMapping("/accounts/username-check")
	public boolean usernameCheck(@RequestParam String username) {
		
		return accountsService.usernameCheck(username);
	}
	
	@PutMapping("/accounts/password")
	public Object passwordChange(@AuthenticationPrincipal PrincipalDetail principalDetail, PasswordReqDto passwordReqDto) {
		return accountsService.updatePassword(principalDetail, passwordReqDto);
	}
	
	/*
	// 회사계정 수정
	@PutMapping("/accounts/CompanyEdit")
	// @AuthenticationPrincipal -> 뭔가요
	public boolean companyEdit(@AuthenticationPrincipal PrincipalDetail principalDetail, ProfileReqDto profileReqDto) {
		return accountsService.updateCompany(principalDetail, profileReqDto);
	}
	*/
}
