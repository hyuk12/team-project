package com.springboot.jobkorea.web.controller;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RestController;

import com.springboot.jobkorea.config.auth.PrincipalDetail;
import com.springboot.jobkorea.service.RecruitService;
import com.springboot.jobkorea.web.dto.recruit.RecruitReqDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@RestController
public class RecruitDtlController {
	
	private final RecruitService recruitService;
	
	@PutMapping("/recruit/recruit")
	public boolean updateRecruit(@AuthenticationPrincipal PrincipalDetail principalDetail, RecruitReqDto recruitReqDto) {
//		dto값을 받을 거니까 dto 생성하고
//		실행할 service 만들어야한다.
//		인강 회원정보 수정하는 부분에서 보고 해야함
		System.out.println(recruitReqDto);
		return recruitService.updateRecruit(principalDetail, recruitReqDto);
	}
}
