package com.springboot.jobkorea.web.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.springboot.jobkorea.service.JobsGetInfo;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@RestController
public class JobBoard {

	private final JobsGetInfo jobsGetInfo;
	
	@GetMapping({"/jobsList/{jobsListId}"})
	public Object getJobInfo(@PathVariable int jobsListId) {
		return jobsGetInfo.getJobList(jobsListId);
	}
	
}
