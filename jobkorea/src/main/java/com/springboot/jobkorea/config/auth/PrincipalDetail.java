package com.springboot.jobkorea.config.auth;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.oauth2.core.user.OAuth2User;

import com.springboot.jobkorea.domain.anm.Anm_edit;
import com.springboot.jobkorea.domain.company.CompanyDtl;
import com.springboot.jobkorea.domain.resume.Resume;
import com.springboot.jobkorea.domain.user.Company;
import com.springboot.jobkorea.domain.user.User;

import lombok.Data;


@Data
public class PrincipalDetail implements UserDetails, OAuth2User{

	
	private static final long serialVersionUID = 1L;


	private User users;
	private Company company;
	private Resume resume;
	private Anm_edit anm_edit;
	private CompanyDtl companyDtl;

	private String username;
	private String password;
	private String role;
	
	private Map<String, Object> attributes;
	
	public PrincipalDetail(User user, Resume resume) {
		this.users = user;
		this.resume = resume;
		this.username = user.getUsername();
		this.password = user.getPassword();
		this.role = user.getRole();
	}

	public PrincipalDetail(Company company, CompanyDtl companyDtl, Anm_edit anm_edit) {
		this.company = company;
		this.companyDtl = companyDtl;
		this.anm_edit = anm_edit;
		this.username = company.getUsername();
		this.password = company.getPassword();
		this.role = company.getRole();
		
	}
	
	public PrincipalDetail(User user, Resume resume , Map<String, Object> attributes) {
		this.users = user;
		this.resume = resume;
		this.username = user.getUsername();
		this.password = user.getPassword();
		this.role = user.getRole();
		this.attributes = attributes;
		
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
		System.out.println(username);
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

	@Override
	public Map<String, Object> getAttributes() {
		// TODO Auto-generated method stub
		return attributes;
	}

	@Override
	public String getName() {
		// TODO Auto-generated method stub
		return (String)attributes.get("name");
	}
	


}