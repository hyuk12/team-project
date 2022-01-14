package com.springboot.jobkorea.domain.user;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserRepository {
	public User getUserByusername(String username);
}
