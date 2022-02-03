package com.springboot.jobkorea.domain.user;

import org.apache.ibatis.annotations.Mapper;

import com.springboot.jobkorea.domain.resume.Resume;

@Mapper
public interface UserRepository {
	public int checkUsernameByUsername(String username);
	public int insertUser(User user);
	public int insertCompUser(Company company);

	public User getUserByUsername(String username);
	public Company getCompanyByUsername(String username);
	
	public Resume getResumeById(int id);
	
	//accounts
	public int updateUserById(User user);
	public int updateUserDtlById(Resume resume);
	public int updatePasswordById(User user);
	
}
