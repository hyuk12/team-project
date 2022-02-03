package com.springboot.jobkorea.domain.anm;

import org.apache.ibatis.annotations.Mapper;

import com.springboot.jobkorea.domain.user.Company;

@Mapper
public interface AnmRepository {
	public Anm_edit getAnmById(int id);
	
	public int insertAnm(Anm_edit anm_edit);
	public int updateCompById(Company company);
}
