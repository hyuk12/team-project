package com.springboot.jobkorea.domain.anm;

import java.time.LocalDateTime;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Builder
@Data
public class IndexBoard {
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
	private String compname;
	private String industry;
	private String homepage;
	private String establish;
	private String business;
	private String address;
	
	private LocalDateTime create_date;
	private LocalDateTime update_date;
}
