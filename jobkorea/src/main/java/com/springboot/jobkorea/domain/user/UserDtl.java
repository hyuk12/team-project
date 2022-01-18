package com.springboot.jobkorea.domain.user;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@NoArgsConstructor
@AllArgsConstructor
@Data
public class UserDtl {
	
	private int id;
	
	private String birth;
	private String gender;
	private String phone;
	private String address;
	private String profile_img;
	
	
	
}
