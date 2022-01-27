package com.springboot.jobkorea.web.controller;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RestController;

import com.springboot.jobkorea.config.auth.PrincipalDetail;
import com.springboot.jobkorea.service.ResumeService;
import com.springboot.jobkorea.web.dto.resume.ResumeReqDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@RestController
public class ResumeController {
	
	private final ResumeService resumeService;
	
	//이력서 정보 변경
	@PutMapping("/resume/edit")
	public boolean updateResume(@AuthenticationPrincipal PrincipalDetail principalDetail, ResumeReqDto resumeReqDto) {
		System.out.println(resumeReqDto);
		return resumeService.updateResume(principalDetail, resumeReqDto);
	}
	
}
