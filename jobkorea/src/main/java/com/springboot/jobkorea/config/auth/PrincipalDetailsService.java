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
		int tokenIndex = username.lastIndexOf("_");
		String userFlag = username.substring(tokenIndex + 1);
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
