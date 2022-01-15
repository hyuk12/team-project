package com.springboot.jobkorea.config.auth;

import java.util.ArrayList;
import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import com.springboot.jobkorea.domain.user.Company;
import com.springboot.jobkorea.domain.user.User;

import lombok.Data;

@Data
public class PrincipalDetailComp implements UserDetails{

	
	private static final long serialVersionUID = 1L;
	
	
	private Company company; 
	
	
	public PrincipalDetailComp(Company company) {
		this.company = company;
	}

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		//getAuthorities >> 시큐리티가 권한을 가져다 쓸 때 쓰기
		
		Collection<GrantedAuthority>collection = new ArrayList<GrantedAuthority>();
		collection.add(new GrantedAuthority() {
			
			
			private static final long serialVersionUID = 1L;

			@Override
			public String getAuthority() {
				return company.getRole();
				
			}
		});
		return collection;
	}

	@Override
	public String getPassword() {
		// TODO Auto-generated method stub
		return company.getPassword();
	}

	@Override
	public String getUsername() {
		// TODO Auto-generated method stub
		return company.getUsername();
	}

	@Override
	public boolean isAccountNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isEnabled() {
		// TODO Auto-generated method stub
		return true;
	}

}
