package com.springboot.jobkorea.web.controller;

import javax.validation.Valid;

import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.springboot.jobkorea.service.AuthService;
import com.springboot.jobkorea.web.dto.auth.FindIdReqDto;
import com.springboot.jobkorea.web.dto.auth.FindPwReqDto;
import com.springboot.jobkorea.web.dto.auth.SignupCompReqDto;
import com.springboot.jobkorea.web.dto.auth.SignupReqDto;
import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@RestController
@RequestMapping("/auth")
public class AuthController {
	
	private final AuthService authService;
	
	@PostMapping("/signup")
	public Object signup(@Valid SignupReqDto signupReqDto, BindingResult bindingResult) {
			
			// 사인업 리퀘스트 디티오의 정보가 valid체크를 해서 오류가나면 binding으로 넘긴다
			return authService.validCheck(signupReqDto,bindingResult);
	}
	
	@PostMapping("/signupComp")
	public Object signup(@Valid SignupCompReqDto signupCompReqDto, BindingResult bindingResult) {
		return authService.validCheck(signupCompReqDto, bindingResult);
	}
	
	// 정보를 불러오는 건 GETMapping
	@GetMapping("/find/id")
	public Object findID(FindIdReqDto findIdReqDto) {
		return authService.usernameCheck(findIdReqDto);
	}
	
	@PostMapping("/find/pw")
	public Object findPW(FindPwReqDto findPwReqDto) {
		return authService.passwordCheck(findPwReqDto);
	}
}
