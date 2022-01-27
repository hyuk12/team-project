package com.springboot.jobkorea.config.auth;

import java.util.ArrayList;

import java.util.Collection;


import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import com.springboot.jobkorea.domain.resume.Resume;
import com.springboot.jobkorea.domain.user.Company;
import com.springboot.jobkorea.domain.user.User;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
public class PrincipalDetail implements UserDetails{

	
	private static final long serialVersionUID = 1L;


	private User users;
	private Company company;
	private Resume resume;

	private String username; //id
	private String password;
	private String role;
	
	
	public PrincipalDetail(User user, Resume resume) {
		this.users = user;
		this.resume = resume;
		this.username = user.getUsername();
		this.password = user.getPassword();
		this.role = user.getRole();
	}

	public PrincipalDetail(Company company) {
		this.company = company;
		this.username = company.getUsername();
		this.password = company.getPassword();
		this.role = company.getRole();
	}
	

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		//getAuthorities >> 시큐리티가 권한을 가져다 쓸 때 쓰기
		
		Collection<GrantedAuthority>collection = new ArrayList<GrantedAuthority>();
		collection.add(new GrantedAuthority() {
			private static final long serialVersionUID = 1L;
			@Override
			public String getAuthority() {
				
				return role;
				
			}
		});
		return collection;
		
		
	}

	@Override
	public String getPassword() {
		// TODO Auto-generated method stub
		return password;
	}

	@Override
	public String getUsername() {
		// TODO Auto-generated method stub
		return username;
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