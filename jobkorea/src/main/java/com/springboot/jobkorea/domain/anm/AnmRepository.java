package com.springboot.jobkorea.domain.anm;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.springboot.jobkorea.domain.user.Company;

@Mapper
public interface AnmRepository {
	public List<Anm_edit> getAnmEditByCompname(String compname);
	public Anm_edit getAnmById(int id);
	public int insertAnm(Anm_edit anm_edit);
	public int updateCompById(Company company);
	
	public Anm_edit getBoardById(int board_id);
	public List<IndexBoard>getIndexBoardListByCompname(String compname);
}
