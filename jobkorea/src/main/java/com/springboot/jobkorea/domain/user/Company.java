package com.springboot.jobkorea.domain.user;

import java.time.LocalDateTime;

import lombok.Builder;
import lombok.Data;

@Builder
@Data
public class Company {
	
	private int id;
	
	private String name;
	private String username;
	private String password;
	private String email;
	private String phone;
	private String role;
	
//	기업 정보
	
	private String comptype;
	private String compnum;
	private String compname;
	private String ceoname;
	
	
	private LocalDateTime create_date;
	private LocalDateTime update_date;
}
