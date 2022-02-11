package com.springboot.jobkorea.domain.anm;

import java.time.LocalDateTime;

import com.springboot.jobkorea.web.dto.anm.AnmRespDto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Builder
@AllArgsConstructor
@Data
public class Anm_edit {
	
	private int id;
	
	
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
	
	private int comp_id;
	private LocalDateTime create_date;
	private LocalDateTime update_date;
	
	public AnmRespDto toAnmRespDto() {
		return AnmRespDto.builder()
				.boardId(id)
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
				.comp_id(comp_id)
				.create_date(create_date)
				.update_date(update_date)
				.build();
	}
}
