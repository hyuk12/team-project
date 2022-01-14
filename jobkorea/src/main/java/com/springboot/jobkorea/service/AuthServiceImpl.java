package com.springboot.jobkorea.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;

import com.springboot.jobkorea.domain.user.Company;
import com.springboot.jobkorea.domain.user.User;
import com.springboot.jobkorea.domain.user.UserRepository;
import com.springboot.jobkorea.web.dto.auth.SignupCompReqDto;
import com.springboot.jobkorea.web.dto.auth.SignupCompRespDto;
import com.springboot.jobkorea.web.dto.auth.SignupReqDto;
import com.springboot.jobkorea.web.dto.auth.SignupRespDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class AuthServiceImpl implements AuthService {

	private final UserRepository userRepository;
	
	@Override
	public SignupRespDto<?> validCheck(SignupReqDto signupReqDto, BindingResult bindingResult) {
		if(bindingResult.hasErrors()) {
			Map<String, String> errorMap = new HashMap<String, String>();
			for(FieldError error : bindingResult.getFieldErrors()) {
				errorMap.put(error.getField(), error.getDefaultMessage());
			}
			SignupRespDto<Map<String, String>> signupRespDto = new SignupRespDto<Map<String, String>>();
			signupRespDto.setCode(444);
			signupRespDto.setData(errorMap);
			
			return signupRespDto;
		}else {
			int checkUsernameResult = userRepository.checkUsernameByUsername(signupReqDto.getUsername());
			SignupRespDto<String> signupRespDto = new SignupRespDto<String>();
			if(checkUsernameResult == 0) {
				//회원가입성공
				User userEntity = signupReqDto.toEntity();
				userRepository.insertUser(userEntity);
				signupRespDto.setCode(001);
				signupRespDto.setData("회원가입 완료.");
			}else {
				//회원가입실패
				signupRespDto.setCode(002);
				signupRespDto.setData("이미 존재하는 아이디입니다.");
			}
			return signupRespDto;
		}
		
	}

	@Override
	public SignupCompRespDto<?> validCheck(SignupCompReqDto signupCompReqDto, BindingResult bindingResult) {
		if(bindingResult.hasErrors()) {
			Map<String, String> errorMap = new HashMap<String, String>();
			for(FieldError error : bindingResult.getFieldErrors()) {
				errorMap.put(error.getField(), error.getDefaultMessage());
			}
			SignupCompRespDto<Map<String, String>> signupCompRespDto = new SignupCompRespDto<Map<String, String>>();
			signupCompRespDto.setCode(444);
			signupCompRespDto.setData(errorMap);
			
			return signupCompRespDto;
		}else {
			int checkUsernameResult = userRepository.checkUsernameByUsername(signupCompReqDto.getUsername());
			SignupCompRespDto<String> signupCompRespDto = new SignupCompRespDto<String>();
			if(checkUsernameResult == 0) {
				//회원가입성공
				Company compUserEntity = signupCompReqDto.toEntity();
				userRepository.insertCompUser(compUserEntity);
				signupCompRespDto.setCode(001);
				signupCompRespDto.setData("회원가입 완료.");
			}else {
				//회원가입실패
				signupCompRespDto.setCode(002);
				signupCompRespDto.setData("이미 존재하는 아이디입니다.");
			}
			return signupCompRespDto;
	}
	}
}
