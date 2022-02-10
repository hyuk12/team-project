package com.springboot.jobkorea.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.springboot.jobkorea.domain.anm.AnmRepository;
import com.springboot.jobkorea.domain.anm.Anm_edit;
import com.springboot.jobkorea.domain.jobs.IndexBoard;
import com.springboot.jobkorea.domain.jobs.JobsInfoRepository;
import com.springboot.jobkorea.domain.user.Company;
import com.springboot.jobkorea.domain.user.UserRepository;
import com.springboot.jobkorea.web.dto.jobs.IndexJobsRespDto;
import com.springboot.jobkorea.web.dto.jobs.JobsInfoRespDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class JobsGetInfoImpl implements JobsGetInfo {

	private final JobsInfoRepository jobsInfoRepository;
	private final UserRepository userRepository;
	private final AnmRepository anmRepository;
	
	@Override
	public JobsInfoRespDto getJobList(int jobsListId) {
		JobsInfoRespDto jobsInfoRespDto = jobsInfoRepository.getJobsInfoById(jobsListId).toJobEntity();
		Company compEntity = userRepository.getCompById(jobsInfoRespDto.getComp_id());
		Anm_edit anmEntity = anmRepository.getAnmById(jobsInfoRespDto.getComp_id());
		jobsInfoRespDto.setAnm_picture(anmEntity.getAnm_picture());
		jobsInfoRespDto.setCompname(compEntity.getCompname());
		
		return jobsInfoRespDto;
	}

	@Override
	public IndexJobsRespDto getIndexBoardList(String compname, int page) {
		List<IndexBoard> indexBoardListAll = jobsInfoRepository.getIndexBoardListByCompname(compname);
		int indexBoardListTotalCount = indexBoardListAll.size();
		int startIndex = page *3;
		int endIndex = startIndex +3;
		List<IndexBoard> indexBoardList = new ArrayList<IndexBoard>();
		for(int i = startIndex; i < endIndex && i < indexBoardListTotalCount; i++) {
			indexBoardList.add(indexBoardListAll.get(i));
		}
		IndexJobsRespDto indexJobsRespDto = new IndexJobsRespDto();
		indexJobsRespDto.setIndexBoardList(indexBoardList);
		indexJobsRespDto.setIndexBoardTotalCount(indexBoardListTotalCount);
		return indexJobsRespDto;
	}

	

	
}
