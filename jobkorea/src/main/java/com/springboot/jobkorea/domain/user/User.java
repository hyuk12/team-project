package com.springboot.jobkorea.domain.user;

import java.time.LocalDateTime;

import lombok.Builder;
import lombok.Data;

@Builder
@Data
public class User {
	
	public int id;

	private String name;
	private String username;
	private String password;
	private String role;
	private String email;
	private String phone;
	

	
//	기업 정보
	
	
	
	public LocalDateTime create_date;
	public LocalDateTime update_date;
}
