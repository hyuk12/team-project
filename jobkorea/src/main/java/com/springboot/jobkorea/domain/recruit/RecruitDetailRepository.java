package com.springboot.jobkorea.domain.recruit;

import org.apache.ibatis.annotations.Mapper;

import com.springboot.jobkorea.domain.user.Company;

@Mapper
public interface RecruitDetailRepository {
	
//	여기에는 anm_mst 공고에 필요한것을 넣어야하나
//	comp_dtl 
	public int updateRecruitDetail(RecruitDetail recruitDetail);
 
//	public int updateRecruitById(RecruitDetail recruitDetail);
	

}
