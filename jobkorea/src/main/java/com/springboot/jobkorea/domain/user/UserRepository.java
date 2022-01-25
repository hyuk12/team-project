package com.springboot.jobkorea.domain.user;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserRepository {
	public int checkUsernameByUsername(String username);
	public int insertUser(User user);
	public int insertCompUser(Company company);

	public User getUserByUsername(String username);
	public Company getCompanyByUsername(String username);
	
	public int updatePasswordById(User user);
	public int updateUserInfoById(User user);
	
}
