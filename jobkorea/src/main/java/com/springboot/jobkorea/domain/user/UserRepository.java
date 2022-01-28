package com.springboot.jobkorea.domain.user;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserRepository {
	public int checkUsernameByUsername(String username); // UserMapper.xml 에서 사용

	public int insertUser(User user); // UserMapper.xml 에서 사용

	public int insertCompUser(Company company); // UserMapper.xml 에서 사용

	public User getUserByUsername(String username); // UserMapper.xml 에서 사용

	public Company getCompanyByUsername(String username); // UserMapper.xml 에서 사용

}
