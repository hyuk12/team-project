package com.springboot.jobkorea.web.dto.recruit;

import javax.validation.constraints.NotBlank;

import org.springframework.web.multipart.MultipartFile;

import com.springboot.jobkorea.domain.recruit.RecruitDetail;
import com.springboot.jobkorea.domain.user.Company;

import lombok.Data;

@Data
public class RecruitReqDto {

	private int id;
	private int comp_id;
//	.comptype => 이 부분은 같은 클래스 내에서 선언해줘야하고
//	() 안의 변수명 들은 Company 클래스에서 가져온다는 거란다.
//	밑의 부분을 위해서 선언해줘야하는 부분
//	이력서에서 사용해야하는 부분이기 때문에
	private String comptype;
	private String compnum;
	private String compname;
	private String ceoname;
	private String name;
	private String phone;
	private String email;
	
	@NotBlank
	private String anm_title; // 공고 제목
	@NotBlank
	private String education; // 학력
	@NotBlank
	private String career; // 경력
	@NotBlank
	private String area; //지역
	@NotBlank
	private String gender; // 성별
	@NotBlank
	private String employment; // 고용형태
	@NotBlank
	private String corp_img; //기업공고 이미지
	@NotBlank
	private String task; // 담당업무
	@NotBlank
	private String perfer_treatment; // 우대사항
	@NotBlank
	private String work_day; // 근무일수
	@NotBlank
	private String work_time; // 근무시간
	@NotBlank
	private String pay; // 급여
	@NotBlank
	private String field; // 모집분야 
	
	private MultipartFile file; // 사진같은 파일을 받을 때 필요함
	
	public Company toCompEntity(int id) {
		return Company.builder()
				.comp_id(id)
				.comptype(comptype)
				.compname(compname)
				.ceoname(ceoname)
				.phone(phone)
				.email(email)
				.build();
//		.comptype => 이 부분은 같은 클래스 내에서 선언해줘야하고
//		() 안의 변수명 들은 Company 클래스에서 가져온다는 거란다.
	}
	
	public RecruitDetail toRecruitEntity(int id, String corp_img) {
		return RecruitDetail.builder()
				.id(id)
				.education(education)
				.career(career)
				.area(area)
				.gender(gender)
				.employment(employment)
				.corp_img(corp_img)
				.task(task)
				.prefer_treatment(perfer_treatment)
				.work_day(work_day)
				.work_time(work_time)
				.pay(pay)
				.field(field)
				.build();
	}
	
	
	
	
	
	
}
