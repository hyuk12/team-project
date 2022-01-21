package com.springboot.jobkorea.domain.resume;

import org.apache.ibatis.annotations.Mapper;

import com.springboot.jobkorea.domain.user.User;

@Mapper
public interface ResumeRepository {
	public Resume getResumeById(int id);
	public int updateResume(Resume resume);
	
	public int updateUserById(User user);
	public int updateResumeById(Resume resume);
}
