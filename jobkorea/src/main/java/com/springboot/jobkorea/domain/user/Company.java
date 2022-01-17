package com.springboot.jobkorea.domain.user;

import java.time.LocalDateTime;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;



public class Company extends User {
	

	

	Company(int id, String name, String username, String password, String email, String phone, String role,
			String compType, String compNum, String compName, String ceoName, LocalDateTime create_date,
			LocalDateTime update_date) {
		super(id, name, username, password, email, phone, role, compType, compNum, compName, ceoName, create_date, update_date);
		// TODO Auto-generated constructor stub
	}


//	기업 정보
	
	
}
