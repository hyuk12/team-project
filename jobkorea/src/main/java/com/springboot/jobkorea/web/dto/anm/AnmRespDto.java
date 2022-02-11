package com.springboot.jobkorea.web.dto.anm;

import java.time.LocalDateTime;

import lombok.Builder;
import lombok.Data;

@Builder
@Data
public class AnmRespDto {
	private int boardId;
	
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
	private String compname;
	private String industry;
	private String homepage;
	private String establish;
	private String business;
	private String address;
	
	private LocalDateTime create_date;
	private LocalDateTime update_date;
}
