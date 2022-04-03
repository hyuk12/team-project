package com.springboot.jobkorea.web.dto.anm;

import org.springframework.web.multipart.MultipartFile;

import com.springboot.jobkorea.domain.anm.Anm_edit;
import com.springboot.jobkorea.domain.user.Company;

import lombok.Builder;
import lombok.Data;

@Builder
@Data
public class AnmEditReqDto {
	
	
	
	private String comptype;
	private String compname;
	private String ceoname;
	private String phone;
	private String email;
	
	private String anm_title;
	private String education;
	private String career;
	private String area;
	private String gender;
	private String form_employ;
	
	private String assign_task;
	private String loyalty_point;
	private String working_days;
	private String hours_duty;
	private String salary;
	private String wanted;
	
	private MultipartFile file;
	
	public Company toCompEntity(int comp_id) {
		return Company.builder()
				.comp_id(comp_id)
				.comptype(comptype)
				.compname(compname)
				.ceoname(ceoname)
				.phone(phone)
				.email(email)
				.build();
	}
	
	public Anm_edit toAnmEntity(int comp_id, String anm_picture) {
		return Anm_edit.builder()
				.comp_id(comp_id)
				.anm_title(anm_title)
				.education(education)
				.career(career)
				.area(area)
				.gender(gender)
				.form_employ(form_employ)
				.anm_picture(anm_picture)
				.assign_task(assign_task)
				.loyalty_point(loyalty_point)
				.working_days(working_days)
				.hours_duty(hours_duty)
				.salary(salary)
				.wanted(wanted)
				.build();
	}

	
}
