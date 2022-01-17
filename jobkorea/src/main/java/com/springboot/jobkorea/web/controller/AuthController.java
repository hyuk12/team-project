package com.springboot.jobkorea.web.controller;

import javax.validation.Valid;

import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.springboot.jobkorea.service.AuthService;
import com.springboot.jobkorea.web.dto.auth.SignupCompReqDto;
import com.springboot.jobkorea.web.dto.auth.SignupReqDto;
import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@RestController
public class AuthController {
	
	private final AuthService authService;
	
	@PostMapping("/auth/signup")
	public Object signup(@Valid SignupReqDto signupReqDto, BindingResult bindingResult) {
			
			// 사인업 리퀘스트 디티오의 정보가 valid체크를 해서 오류가나면 binding으로 넘긴다
			return authService.validCheck(signupReqDto,bindingResult);
	}
	
	@PostMapping("/auth/signupComp")
	public Object signup(@Valid SignupCompReqDto signupCompReqDto, BindingResult bindingResult) {
		return authService.validCheck(signupCompReqDto, bindingResult);
	}
}
