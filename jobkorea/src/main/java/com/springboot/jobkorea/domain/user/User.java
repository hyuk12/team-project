package com.springboot.jobkorea.domain.user;

import java.time.LocalDateTime;

import lombok.Builder;
import lombok.Data;

@Builder
@Data
public class User {
	
	private int id;
	
	private String name;
	private String username;
	private String password;
	private String role;
	private String email;
	private String phone;
	
	
//	기업 정보
	
//	private String compType;
//	private String compNum;
//	private String compName;
//	private String ceoName;
	
	
	private LocalDateTime create_date;
	private LocalDateTime update_date;
}
