package com.springboot.jobkorea.domain.recruit;

import java.time.LocalDateTime;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor; 

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class RecruitDetail {
//	anm_mst의 역할을 얘가 맡는다.
	private int id;
//	회사 번호
	private int comp_id;
//	공고 제목
	private String anm_title;
	
//  학력
	private String education; 
//	경력	
	private String career;
//	지역
	private String area;
//	성별
	private String gender;
//	고용형태
	private String employment;
//	기업공고 이미지
	private String corp_img;
//	담당업무
	private String task;
//	우대사항
	private String prefer_treatment;
//	근무일수
	private String work_day;
//	근무시간
	private String work_time;
//	급여 
	private String pay;
//	모집분야
	private String field;

	private LocalDateTime create_date;
	private LocalDateTime update_date;
	
	
}
