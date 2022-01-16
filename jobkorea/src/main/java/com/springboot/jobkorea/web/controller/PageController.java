package com.springboot.jobkorea.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class PageController {
	
	@GetMapping({"/signinbefore/index"})
	public String indexForm() {
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
	
	@GetMapping({"/auth/signinComp"})
	public String signinCompForm() {
		return "auth/signinComp";
	}
	
	@GetMapping({"/", "myIndex"})
	public String signinAfterForm() {
		return "myIndex";
	}
	
	
}
