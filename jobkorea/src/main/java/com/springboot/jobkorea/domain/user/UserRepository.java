package com.springboot.jobkorea.domain.user;

import org.apache.ibatis.annotations.Mapper;

import com.springboot.jobkorea.domain.resume.Resume;

@Mapper
public interface UserRepository {
	public int checkUsernameByUsername(String username);
	public int checkCompUsernameByCompUsername(String username);
	public int insertUser(User user);
	public int insertCompUser(Company company);

	public User getUserByUsername(String username);
	public User getUserByOAuth2Username(String oauth2_username);
	public Company getCompanyByUsername(String username);
	public Company getCompById(int comp_id);
	
	//accounts
	public int updateUserById(User user);
	public int updateUserDtlById(Resume resume);
	public int updatePasswordById(User user);
	
}
