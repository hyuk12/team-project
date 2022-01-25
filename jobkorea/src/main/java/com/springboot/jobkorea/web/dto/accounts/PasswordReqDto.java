package com.springboot.jobkorea.web.dto.accounts;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.springboot.jobkorea.domain.user.User;

import lombok.Builder;
import lombok.Data;

@Builder
@Data
public class PasswordReqDto {
	@NotBlank
	private String prePassword;
	
	@NotBlank
	@Size(min=7, max=20)
	private String newPassword;
	
	public User toEntity(int id) {
		return User.builder()
				.id(id)
				.password(new BCryptPasswordEncoder().encode(newPassword))
				.build();
	}
}
