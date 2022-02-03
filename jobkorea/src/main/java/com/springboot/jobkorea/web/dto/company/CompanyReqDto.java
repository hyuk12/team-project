package com.springboot.jobkorea.web.dto.company;

import com.springboot.jobkorea.domain.company.CompanyDtl;
import com.springboot.jobkorea.domain.user.Company;

import lombok.Builder;
import lombok.Data;

@Builder
@Data
public class CompanyReqDto {
	// js의 name과 같아야함
	// comp_mst
	private String username;
	private String compType;
	private String ceoName;
	
	// comp_dtl
	private String industry;
	private String homepage;
	private String establish;
	private String sales;
	private String business;
	private String address;
	
	public Company toCompanyEntity (int id) {
		return Company.builder()
					.id(id)
					.comptype(compType)
					.ceoname(ceoName)
					.build();
	}

	public CompanyDtl toCompanyDtlEntity (int id) {
		return CompanyDtl.builder()
				.id(id)
				.industry(industry)
				.homepage(homepage)
				.establish(establish)
				.sales(sales)
				.business(business)
				.address(address)
				.build();
	}
}
