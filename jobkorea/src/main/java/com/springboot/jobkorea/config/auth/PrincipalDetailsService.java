package com.springboot.jobkorea.config.auth;

import org.springframework.security.core.userdetails.UserDetails;

import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.springboot.jobkorea.domain.resume.Resume;
import com.springboot.jobkorea.domain.resume.ResumeRepository;
import com.springboot.jobkorea.domain.user.Company;
import com.springboot.jobkorea.domain.user.User;

import com.springboot.jobkorea.domain.user.UserRepository;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class PrincipalDetailsService implements UserDetailsService{

	private final UserRepository userRepository;
	private final ResumeRepository resumeRepository;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		int tokenIndex = username.lastIndexOf("_");
		String userFlag = username.substring(tokenIndex + 1);
		username = username.substring(0, tokenIndex);

		if(userFlag.equals("p")){
			User userEntity = userRepository.getUserByUsername(username);
			if(userEntity == null){
				return null;
			}else{
				Resume resumeEntity = resumeRepository.getResumeById(userEntity.getId());
				return new PrincipalDetail(userEntity, resumeEntity);
			}

		} else {
			System.out.println(username);
			Company compEntity = userRepository.getCompanyByUsername(username);
			if(compEntity == null){
				return null;
			}else{
				return new PrincipalDetail(compEntity);
			}
		}
	}
}