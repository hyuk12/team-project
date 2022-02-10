package com.springboot.jobkorea.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.springboot.jobkorea.domain.Board.IndexBoard;
import com.springboot.jobkorea.domain.Board.JobsInfoRepository;
import com.springboot.jobkorea.web.dto.board.IndexBoardRespDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class JobsGetInfoServiceImpl implements JobsGetInfoService {

	private final JobsInfoRepository jobsInfoRepository;
	
	
	@Override
	public boolean getJobsInfobyCompId() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public IndexBoardRespDto getIndexBoardList(String username, int page) {
		List<IndexBoard> indexBoardListAll = jobsInfoRepository.getIndexBoardListByCompname(username);
		int indexBoardListTotalCount = indexBoardListAll.size();
		int startIndex = page * 3;
		int endIndex = startIndex + 3;
		List<IndexBoard> indexBoardList = new ArrayList<IndexBoard>();
		for(int i = startIndex; i < endIndex && i < indexBoardListTotalCount; i++) {
			indexBoardList.add(indexBoardListAll.get(i));
		}
		IndexBoardRespDto indexBoardRespDto = new IndexBoardRespDto();
		indexBoardRespDto.setIndexBoardList(indexBoardList);
		indexBoardRespDto.setIndexBoardTotalCount(indexBoardListTotalCount);
		
		return indexBoardRespDto;
	}

	
}
