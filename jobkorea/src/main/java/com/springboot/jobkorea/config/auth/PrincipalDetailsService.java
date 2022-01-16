package com.springboot.jobkorea.config.auth;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.springboot.jobkorea.domain.user.Company;
import com.springboot.jobkorea.domain.user.User;
import com.springboot.jobkorea.domain.user.UserDtl;
import com.springboot.jobkorea.domain.user.UserRepository;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class PrincipalDetailsService implements UserDetailsService{

	private final UserRepository userRepository;
	
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		User userEntity = userRepository.getUserByUsername(username);
		Company compEntity = userRepository.getCompanyByUsername(username);
		if(userEntity == null) {
			if(compEntity != null) {
				return new PrincipalDetail(compEntity);
			}else {
				return null;
			}
		}else {
			return new PrincipalDetail(userEntity);
		}
	}
	

}
