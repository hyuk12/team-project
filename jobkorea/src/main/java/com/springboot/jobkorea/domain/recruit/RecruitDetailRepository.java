package com.springboot.jobkorea.domain.recruit;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface RecruitDetailRepository {

	public RecruitDetail getRecruitDetailById(int id);

	public int updateRecruitDetail(RecruitDetail recruitDetail);

}
