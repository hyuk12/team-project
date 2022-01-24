package com.springboot.jobkorea.domain.user;

import java.time.LocalDateTime;

import lombok.Builder;
import lombok.Data;

@Builder
@Data
public class User {
	
	public int id;
	
<<<<<<< HEAD
	private String name;
	private String username;
	private String password;
	private String role;
	private String email;
	private String phone;
	
=======
	public String name;
	public String username;
	public String password;
	public String email;
	public String phone;
	public String role;
>>>>>>> chh
	
//	기업 정보
	
	private String compType;
	private String compNum;
	private String compName;
	private String ceoName;
	
	
	public LocalDateTime create_date;
	public LocalDateTime update_date;
}
