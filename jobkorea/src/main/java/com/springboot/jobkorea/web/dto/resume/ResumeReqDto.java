package com.springboot.jobkorea.web.dto.resume;

import org.springframework.web.multipart.MultipartFile;

import com.springboot.jobkorea.domain.resume.Resume;
import com.springboot.jobkorea.domain.user.User;

import lombok.Data;

@Data
public class ResumeReqDto {

	private String name; // 이름
	private String birth; // 생년월일
	private String phone; // 휴대폰번호
	private String gender; // 성별
	private String email; // 이메일
	private String address; // 주소
	private String profile_img; // 프로필이미지
	private String education; // 학력
	private String schoolname; // 학교명
	private String admissionyear; // 입학년월일
	private String graduateyear; // 졸업년월일
	private String grades; // 학점
	private String major; // 전공
	private String graduationstatus; // 졸업상태 내역
	private String compname; // 회사이름
	private String department; // 부서
	private String joinyear; // 입사년월일
	private String leaveyear; // 퇴사 년월일
	private String position; // 직책
	private String sectors; // 업종
	private String salary; // 연봉
	private String certificate; // 자격증 명
	private String issuedby; // 발행처
	private String handlingmonth; // 취급월
	private String selfintroduction; // 자기소개서

	private MultipartFile file; // 사진같은 파일받을 때 필요

	public User toUserEntity(int id) {
		return User.builder()
				.id(id)
				.name(name)
				.phone(phone)
				.email(email)
				.build();
	}

	public Resume toResumeEntity(int id, String profile_img) {
		return Resume.builder()
				.id(id)
				.birth(birth)
				.gender(gender)
				.address(address)
				.profile_img(profile_img)
				.education(education)
				.schoolname(schoolname)
				.admissionyear(admissionyear)
				.graduateyear(graduateyear)
				.grades(grades)
				.major(major)
				.graduationstatus(graduationstatus)
				.compname(compname)
				.department(department)
				.joinyear(joinyear)
				.leaveyear(leaveyear)
				.position(position)
				.sectors(sectors)
				.salary(salary)
				.certificate(certificate)
				.issuedby(issuedby)
				.handlingmonth(handlingmonth)
				.selfintroduction(selfintroduction).build();
	}
}
