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
	public String signinAfterForm() {
		return "myIndex";
	}

	@GetMapping({"/resume/resume_edit"})
	public String resumeEditForm(@AuthenticationPrincipal PrincipalDetail principalDetail){
		return "/resume/resume_edit";
	}
}
