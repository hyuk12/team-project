package com.springboot.jobkorea.service;

import org.springframework.stereotype.Service;

import com.springboot.jobkorea.config.auth.PrincipalDetail;
import com.springboot.jobkorea.web.dto.recruit.RecruitReqDto;

@Service
public interface RecruitService {

	public boolean updateRecruit(PrincipalDetail principalDetail, RecruitReqDto recruitReqDto);
}
