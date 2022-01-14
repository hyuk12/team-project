package com.springboot.jobkorea.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class PageContoller {
	
	@GetMapping({"/" , "index"})
	public String indexForm() {
		return "index";
	}
	@GetMapping("/auth/signup")
	public String signupForm() {
		return "auth/signup";
	}
	
	@GetMapping("/auth/signupComp")
	public String signupCompForm() {
		return "auth/signupComp";
	}
	
	
}
