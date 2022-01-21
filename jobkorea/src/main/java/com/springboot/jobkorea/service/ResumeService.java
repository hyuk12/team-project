package com.springboot.jobkorea.service;

import org.springframework.stereotype.Service;

import com.springboot.jobkorea.config.auth.PrincipalDetail;
import com.springboot.jobkorea.web.dto.resume.ResumeReqDto;


public interface ResumeService {
	public boolean updateResume(PrincipalDetail principalDetail, ResumeReqDto resumeReqDto) ;
}
