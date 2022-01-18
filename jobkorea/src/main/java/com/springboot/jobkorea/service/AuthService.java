package com.springboot.jobkorea.service;

import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.springboot.jobkorea.web.dto.auth.SignupCompReqDto;
import com.springboot.jobkorea.web.dto.auth.SignupCompRespDto;
import com.springboot.jobkorea.web.dto.auth.SignupReqDto;
import com.springboot.jobkorea.web.dto.auth.SignupRespDto;


@Service
public interface AuthService {
	public SignupRespDto<?> validCheck(SignupReqDto signupReqDto, BindingResult bindingResult);
	public SignupCompRespDto<?> validCheck(SignupCompReqDto signupReqDto, BindingResult bindingResult);
}
