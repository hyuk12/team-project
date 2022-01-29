package com.springboot.jobkorea.domain.user;

import java.time.LocalDateTime;

import lombok.Builder;
import lombok.Data;

@Builder
@Data
public class Company {

	private int comp_id;

//	기업 정보

	private String comptype;
	private String compnum;
	private String compname;
	private String ceoname;

	private String username; // 로그인시에 id
	private String password;
	private String role;
	private String name;
	private String phone;
	private String email;

	private LocalDateTime create_date;
	private LocalDateTime update_date;
}
