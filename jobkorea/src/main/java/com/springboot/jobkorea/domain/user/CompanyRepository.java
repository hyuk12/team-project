package com.springboot.jobkorea.domain.user;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface CompanyRepository {
// comp_mst 부분이다 

//	company 가 채용을 할거니까???? comp_mst에서 id를 얻을거니까???
//  채용은 recruit쪽에서 할거다. 여기는 company 정보를 등록하는 부분

	public Company getRecruitById(int id);

	public int updateCompany(Company company);

//	public int updateRecruitById(RecruitDetail recruitDetail);
}
