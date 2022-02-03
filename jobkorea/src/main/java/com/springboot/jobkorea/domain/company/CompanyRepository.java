package com.springboot.jobkorea.domain.company;

import org.apache.ibatis.annotations.Mapper;

import com.springboot.jobkorea.domain.user.Company;

@Mapper
public interface CompanyRepository {
	public CompanyDtl getCompanyById(int id); 
	public int usernameCheckByUsername(String username);
	public int updateCompanyById(Company company);
	public int updateCompanyDtlById(Company company);
	public int updateCompanyPwById(Company company);
}
