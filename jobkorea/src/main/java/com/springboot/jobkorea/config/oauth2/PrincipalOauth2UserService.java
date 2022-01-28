package com.springboot.jobkorea.config.oauth2;

import java.util.Map;
import java.util.UUID;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.oauth2.client.userinfo.DefaultOAuth2UserService;
import org.springframework.security.oauth2.client.userinfo.OAuth2UserRequest;
import org.springframework.security.oauth2.core.OAuth2AuthenticationException;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.stereotype.Service;

import com.springboot.jobkorea.config.auth.PrincipalDetail;
import com.springboot.jobkorea.config.oauth2.provider.OAuth2UserDto;
import com.springboot.jobkorea.domain.resume.Resume;
import com.springboot.jobkorea.domain.resume.ResumeRepository;
import com.springboot.jobkorea.domain.user.User;
import com.springboot.jobkorea.domain.user.UserRepository;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class PrincipalOauth2UserService extends DefaultOAuth2UserService {
	
	private final UserRepository userRepository;
	private final ResumeRepository resumeRepository;
	
	@Override
	public OAuth2User loadUser(OAuth2UserRequest userRequest) throws OAuth2AuthenticationException {
		OAuth2User oAuth2User = super.loadUser(userRequest);
		Map<String, Object> oAuth2UserAttributes = oAuth2User.getAttributes();
		String provider = userRequest.getClientRegistration().getRegistrationId();
		String providerId = null;
		System.out.println("Attributes: " + oAuth2UserAttributes);
		if(provider.equals("naver")) {
			oAuth2UserAttributes = (Map<String, Object>)oAuth2UserAttributes.get("response");
			providerId = (String)oAuth2UserAttributes.get("id");
		}else if(provider.equals("google")) {
			providerId = (String)oAuth2UserAttributes.get("id");
		}
		else {
			providerId = UUID.randomUUID().toString().replaceAll("-", "");
		}
		String oauth2_username = provider + "_" + providerId;
		OAuth2UserDto oAuth2UserDto =  OAuth2UserDto.builder()
				.oauth2_username(oauth2_username)
				.email((String)oAuth2UserAttributes.get("email"))
				.name((String)oAuth2UserAttributes.get("name"))
				.provider(provider)
				.role("ROLE_USER")
				.build();
		
		User userEntity = userRepository.getUserByOAuth2Username(oauth2_username);
		if(userEntity == null) {
			userEntity = oAuth2UserDto.toEntity();
			userEntity.setPassword(new BCryptPasswordEncoder().encode("123123123"));
			userRepository.insertUser(userEntity);
			userEntity = userRepository.getUserByOAuth2Username(oauth2_username);
		}
		System.out.println(oAuth2UserAttributes);
		Resume resumeEntity = resumeRepository.getResumeById(userEntity.getId());
		System.out.println(userEntity);
		System.out.println(resumeEntity);
		return new PrincipalDetail(userEntity, resumeEntity, oAuth2UserAttributes);
	}
}
