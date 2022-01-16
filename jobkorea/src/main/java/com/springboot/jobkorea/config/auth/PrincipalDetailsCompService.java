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
public class PrincipalDetailsCompService implements UserDetailsService{

	private final UserRepository userRepository;
	
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		Company compEntity = userRepository.getCompanyByUsername(username);
		
		if(compEntity == null) {
			return null;
		}else {
			return new PrincipalDetail(compEntity);
		
	}
	

	}
	

}
