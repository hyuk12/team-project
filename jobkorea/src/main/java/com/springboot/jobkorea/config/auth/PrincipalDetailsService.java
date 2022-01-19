package com.springboot.jobkorea.config.auth;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.springboot.jobkorea.domain.user.Company;
import com.springboot.jobkorea.domain.user.User;

import com.springboot.jobkorea.domain.user.UserRepository;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class PrincipalDetailsService implements UserDetailsService{

	private final UserRepository userRepository;
	
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
<<<<<<< HEAD
<<<<<<< HEAD
		int tokenIndex = username.lastIndexOf("_");
=======

		int tokenIndex = username.indexOf("_");
>>>>>>> 7e0a0f3e03c7c09d2f2f8a6ce729c6f23e08302a
		String userFlag = username.substring(tokenIndex + 1);
		System.out.println(userFlag);
		username = username.substring(0, tokenIndex);
		if(userFlag.equals("p")){
			User userEntity = userRepository.getUserByUsername(username);
			if(userEntity == null){
				return null;
			}else{
				System.out.println(userEntity);
				return new PrincipalDetail(userEntity);
			}

		}else {
			Company compEntity = userRepository.getCompanyByUsername(username);
			if(compEntity == null){
				return null;
			}else{
				System.out.println(compEntity);
				return new PrincipalDetail(compEntity);
			}
=======
		User userEntity = userRepository.getUserByUsername(username);
		// Company compEntity = userRepository.getCompanyByUsername(username);
		
		if(userEntity == null) {
			return null;
			/*
			 * if (compEntity == null ) { return null; } else { return new
			 * PrincipalDetail(compEntity); }
			 */
		} else {
			return new PrincipalDetail(userEntity);
>>>>>>> 48a8d831a8ccdfd8a96e8202facd40c3b5cc10ea
		}
	}

}
