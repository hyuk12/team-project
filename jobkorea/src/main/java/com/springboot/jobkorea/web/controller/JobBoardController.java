package com.springboot.jobkorea.web.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.springboot.jobkorea.service.JobsGetInfoService;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@RestController
public class JobBoardController {

	private final JobsGetInfoService jobsGetInfoService;
	
	@GetMapping({"/jobsList"})
	public boolean getJobInfo() {
		return false;
	}
	
}
