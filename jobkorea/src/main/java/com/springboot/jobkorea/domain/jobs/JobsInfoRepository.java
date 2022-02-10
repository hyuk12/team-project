package com.springboot.jobkorea.domain.jobs;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface JobsInfoRepository {
	public JobsInfo getJobsInfoById(int comp_id);
	public List<IndexBoard> getIndexBoardListByCompname(String compname);
}
