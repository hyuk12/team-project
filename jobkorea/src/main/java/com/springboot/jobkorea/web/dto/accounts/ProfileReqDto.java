package com.springboot.jobkorea.web.dto.accounts;

import org.springframework.web.multipart.MultipartFile;

import com.springboot.jobkorea.domain.resume.Resume;
import com.springboot.jobkorea.domain.user.User;

import lombok.Data;

@Data
public class ProfileReqDto {
	private String username;
	private String name;
	private String phone;
	private String email;
	
	private MultipartFile file;
	
	public User toUserEntity(int id, String password) {
		return User.builder()
				.id(id)
				.password(password)
				.username(username)
				.name(name)
				.phone(phone)
				.email(email)
				.build();
	}
	
	public Resume toResumeEntity(int id, String profile_img) {
		return Resume.builder()
				.id(id)
				.profile_img(profile_img)
				.build();
				
	}
}
