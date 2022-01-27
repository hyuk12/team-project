package com.springboot.jobkorea.web.controller;

import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@RestController
public class CompDtlController {
	
	@PutMapping("/recruit/recruit")
	public boolean updateRecruit() {
//		dto값을 받을 거니까 dto 생성하고
//		실행할 service 만들어야한다.
//		인강 회원정보 수정하는 부분에서 보고 해야함
		return true;
	}
}
