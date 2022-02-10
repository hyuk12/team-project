package com.springboot.jobkorea.service;

import com.springboot.jobkorea.web.dto.jobs.IndexJobsRespDto;
import com.springboot.jobkorea.web.dto.jobs.JobsInfoRespDto;

public interface JobsGetInfo {
	public JobsInfoRespDto getJobList(int jobsListId);
	public IndexJobsRespDto getIndexBoardList(String compname, int page); 
}
