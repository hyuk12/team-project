package com.springboot.jobkorea.config.oauth2.provider;

import com.springboot.jobkorea.domain.user.User;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class OAuth2UserDto {
	
	private String oauth2_username;
	private String email;
	private String name;
	private String provider;
	private String role;
	
	public User toEntity() {
		return User.builder()
				.username(oauth2_username)
				.oauth2_username(oauth2_username)
				.email(email)
				.name(name)
				.provider(provider)
				.role(role)
				.build();
	}
}
