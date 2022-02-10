package com.springboot.jobkorea.web.dto.auth;

import com.springboot.jobkorea.domain.user.Company;
import com.springboot.jobkorea.domain.user.User;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class FindIdReqDto {
	private String member;
	private String name;
	private String email;
	
}