package com.springboot.jobkorea.web.controller;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.springboot.jobkorea.config.auth.PrincipalDetail;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class PageController {
	
	@GetMapping({"/index"})
	public String indexForm() {
		return "/signinbefore/index";
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
		
	
		if(principalDetail.getCompany() == null && principalDetail.getUsers() != null){
			return "/myIndex";
		}else if(principalDetail.getCompany() != null  && principalDetail.getUsers() == null) {
			return "/signinbefore/compIndex";
		}else {
			return "/signinbefore/index";
		}
	}
	
	@GetMapping({"/resume/edit"})
	public String resumeEditForm(@AuthenticationPrincipal PrincipalDetail principalDetail){
		if(principalDetail.getCompany() == null && principalDetail.getUsers() != null){
			return "/resume/resume_edit";
		}else if(principalDetail.getCompany() != null  && principalDetail.getUsers() == null) {
			return "/signinbefore/compIndex";
		}else {
			return "/signinbefore/index";
		}
	}
	
	@GetMapping({"/resume"})
	public String resumeForm(@AuthenticationPrincipal PrincipalDetail principalDetail) {
		if(principalDetail.getCompany() == null && principalDetail.getUsers() != null){
			return "/resume/resume";
		}else if(principalDetail.getCompany() != null  && principalDetail.getUsers() == null) {
			return "/signinbefore/compIndex";
		}else {
			return "/signinbefore/index";
		}
				
	}
	
	@GetMapping({"/resume/submission"})
	public String resumeSubForm(@AuthenticationPrincipal PrincipalDetail principalDetail) {
		if(principalDetail.getCompany() == null && principalDetail.getUsers() != null){
			return "/resume/resumeSubmission";
		}else if(principalDetail.getCompany() != null  && principalDetail.getUsers() == null) {
			return "";
		}else {
			return "/signinbefore/index";
		}
		
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
	
	@GetMapping({"/anm/anm_edit"})
	public String anmEditForm(@AuthenticationPrincipal PrincipalDetail principalDetail ) {
		
		if(principalDetail.getCompany() == null && principalDetail.getUsers() != null){
			return "/myIndex";
		}else if(principalDetail.getCompany() != null  && principalDetail.getUsers() == null) {
			return "/anm/anm_edit";
		}else {
			return "/signinbefore/index";
		}
	}
	
	
}
