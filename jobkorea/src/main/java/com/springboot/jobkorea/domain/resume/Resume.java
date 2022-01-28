package com.springboot.jobkorea.domain.resume;

import java.time.LocalDateTime;


import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
@Builder
public class Resume {
	private int id;
	
//	private String name; // 이름
	private String birth; // 생년월일
	private String phone; // 휴대폰번호
	private String gender; // 성별
	private String email; // 이메일
	private String address; // 주소
	private String profile_img; //프로필이미지
	private String education; //학력
	private String schoolname; // 학교명
	private String admissionyear; // 입학년월일
	private String graduateyear; // 졸업년월일
	private String graduationstatus; // 졸업상태 내역
	private String major; // 전공
	private String grades; //학점
	
	
	private String compname; // 회사이름
	private String department; // 부서
	private String joinyear; // 입사년월일
	private String leaveyear; // 퇴사 년월일
	private String position; //직책
	private String sectors; // 업종
	private String salary; // 연봉
	private String certificate; // 자격증 명
	private String issuedby; // 발행처
	private String handlingmonth; // 취급월
	private String selfintroduction; // 자기소개서
	
	private LocalDateTime create_date;
	private LocalDateTime update_date;
	
	
}
