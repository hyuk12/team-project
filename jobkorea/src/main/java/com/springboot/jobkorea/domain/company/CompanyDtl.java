package com.springboot.jobkorea.domain.company;

import java.time.LocalDateTime;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class CompanyDtl {
	private int id;
	
	private String industry;
	private String homepage;
	private String establish;
	private String sales;
	private String business;
	private String address;
	
	
	private LocalDateTime create_date;
	private LocalDateTime update_date;
}
