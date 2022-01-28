package com.springboot.jobkorea.web.controller;

import com.springboot.jobkorea.config.auth.PrincipalDetail;
import com.springboot.jobkorea.config.auth.PrincipalDetailsService;

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
		
		if(principalDetail.getUsername() == principalDetail.getUsers().getUsername()) {
			return "/myIndex";
		}else {
			return"/signinbefore/compIndex";
		}
		
	}
	@GetMapping({"/compIndex"})
	public String compIndexForm(@AuthenticationPrincipal PrincipalDetail principalDetail) {
		return "/signinbefore/compIndex";
	}
	@GetMapping({"/resume/edit"})
	public String resumeEditForm(@AuthenticationPrincipal PrincipalDetail principalDetail){
		return "/resume/resume_edit";
	}
	
	@GetMapping({"/resume"})
	public String resumeForm(@AuthenticationPrincipal PrincipalDetail principalDetail) {
		return "/resume/resume";
				
	}
	
	@GetMapping({"/resume/submission"})
	public String resumeSubForm(@AuthenticationPrincipal PrincipalDetail principalDetail) {
		return "/resume/resumeSubmission";
	}
	@GetMapping({"/jobs/joblist"})
	public String joblistForm() {
		return "/jobs/jobsList";
	}
	
	@GetMapping({"/jobs/jobinfo"})
	public String jobinfoForm() {
		return "/jobs/jobsInfoMain";
	}
	
	@GetMapping({"/mypage/personalPage"})
	public String personalForm() {
		return "mypage/personalPage";
	}
	
	@GetMapping({"/accounts/edit"})
	public String personalEditForm(@AuthenticationPrincipal PrincipalDetail principalDetail ) {
		return "accounts/accounts_edit";
	}
	
	@GetMapping({"/accounts/password"})
	public String personalPwdForm(@AuthenticationPrincipal PrincipalDetail principalDetail ) {
		return "accounts/accounts_pwd";
	}
	
	
}
