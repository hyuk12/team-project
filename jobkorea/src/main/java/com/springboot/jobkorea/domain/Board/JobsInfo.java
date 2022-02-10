package com.springboot.jobkorea.domain.Board;

import java.time.LocalDateTime;

import com.springboot.jobkorea.web.dto.jobs.JobsInfoRespDto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@AllArgsConstructor
@NoArgsConstructor
@Data
public class JobsInfo {

	private int comp_id;
	private String comptype;
	private String compname;
	private String ceoname;
	private String email;
	
	private String anm_title;
	private String education;
	private String career;
	private String area;
	private String gender;
	private String form_employ;
	private String anm_picture;
	private String assign_task;
	private String loyalty_point;
	private String working_days;
	private String hours_duty;
	private String salary;
	private String wanted;
	
	private LocalDateTime update_date;
	
	public JobsInfoRespDto toJobEntity() {
		return JobsInfoRespDto.builder()
				.comp_id(comp_id)
				.comptype(comptype)
				.compname(compname)
				.ceoname(ceoname)
				.email(email)
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
				.update_date(update_date)
				.build();
	}
}
