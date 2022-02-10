package com.springboot.jobkorea.web.dto.jobs;

import java.time.LocalDateTime;

import lombok.Builder;
import lombok.Data;

@Builder
@Data
public class JobsInfoRespDto {
	
	private int jobsListId;
	
	
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
	
	
}
