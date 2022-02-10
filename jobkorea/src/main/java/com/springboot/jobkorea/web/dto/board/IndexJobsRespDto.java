package com.springboot.jobkorea.web.dto.jobs;

import java.util.List;

import com.springboot.jobkorea.domain.jobs.IndexBoard;

import lombok.Data;

@Data
public class IndexJobsRespDto {
	private List<IndexBoard> indexBoardList;
	private int indexBoardTotalCount;
}
