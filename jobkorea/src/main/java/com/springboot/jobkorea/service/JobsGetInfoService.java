package com.springboot.jobkorea.service;

import com.springboot.jobkorea.web.dto.board.IndexBoardRespDto;

public interface JobsGetInfoService {
	public boolean getJobsInfobyCompId();
	public IndexBoardRespDto getIndexBoardList(String name, int page);
}
