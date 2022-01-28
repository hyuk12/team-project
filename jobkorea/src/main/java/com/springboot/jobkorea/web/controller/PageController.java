package com.springboot.jobkorea.web.controller;

import com.springboot.jobkorea.config.auth.PrincipalDetail;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class PageController {
	
	@GetMapping({"/signinbefore/index"})
	public String indexForm(@AuthenticationPrincipal PrincipalDetail principalDetail) {
		return "signinbefore/index";
	}
	
	@GetMapping({"/auth/signup"})
	public String signupForm() {
		return "auth/signup";
	} 
	
	@GetMapping({"/auth/signupComp"})
	public String signupCompForm() {
		return "auth/signupComp";
	}
	
	@GetMapping({"/auth/signin"})
	public String signinForm() {
		return "auth/signin";
	} 
	

	
	@GetMapping({"/", "myIndex"})
	public String signinAfterForm(@AuthenticationPrincipal PrincipalDetail principalDetail) {
		return "myIndex";
	}

	@GetMapping({"/resume/edit"})
	public String resumeEditForm(@AuthenticationPrincipal PrincipalDetail principalDetail){
		return "/resume/resume_edit";
	}
	@GetMapping({"/jobs/joblist"})
	public String joblistForm() {
		return "/jobs/jobsList";
	}
	
	@GetMapping({"/jobs/jobinfo"})
	public String jobinfoForm() {
		return "/jobs/jobsInfoMain";
	}
	
	@GetMapping({"/resume/resume"})
	public String resumeForm(@AuthenticationPrincipal PrincipalDetail principalDetail) {
		return "/resume/resume";
	}
	
	
	
//	session에 principalDetails가 들어있고 여기서 
	@GetMapping({"/recruit/recruit"})
	public String recruitForm(@AuthenticationPrincipal PrincipalDetail principalDetail) {
		return "/recruit/recruit";
	}
	
	 
}
