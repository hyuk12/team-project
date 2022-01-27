package com.springboot.jobkorea.web.dto.recruit;

import lombok.Data;

@Data
public class RecruitReqDto {

	private String title; // 공고 제목
	private String education; // 학력
	private String career; // 경력
	private String area; //지역
	private String gender; // 성별
	private String employment_type; // 고용형태
	private String corp_img; //기업공고 이미지
	private String task; // 담당업무
	private String perfer_treatment; // 우대사항
	private String work_day; // 근무일수
	private String work_tiem; // 근무시간
	private String pay; // 급여
	private String field; // 모집분야 
	
	
}
