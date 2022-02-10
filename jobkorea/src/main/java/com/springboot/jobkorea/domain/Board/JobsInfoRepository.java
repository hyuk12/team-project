package com.springboot.jobkorea.domain.Board;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface JobsInfoRepository {
	public List<IndexBoard> getIndexBoardListByCompname(String compname);
}
