package com.springboot.jobkorea.service;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.springboot.jobkorea.config.auth.PrincipalDetail;
import com.springboot.jobkorea.domain.recruit.RecruitDetail;
import com.springboot.jobkorea.domain.recruit.RecruitDetailRepository;
import com.springboot.jobkorea.domain.user.Company;
import com.springboot.jobkorea.web.dto.recruit.RecruitReqDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class RecruitServiceImpl implements RecruitService {

	private final RecruitDetailRepository recruitDetailRepository;
	
	@Value("${file.path}")
	private String filePath;
	
	public void deleteCorpImgFile(PrincipalDetail principalDetail) {
		String imgUrl = principalDetail.getRecruitDetail().getCorp_img();
//		회사이미지를 어디서 받지
		if(!imgUrl.equals("company_img\\default.jpg")) {
			File file = new File(filePath + imgUrl);
			if(file.exists()) {
				file.delete();
			}
		}
	}
	
	@Override
	public boolean updateRecruit(PrincipalDetail principalDetail, RecruitReqDto recruitReqDto) {
//		채용업데이트는 기업이 하니까
		int id = principalDetail.getCompany().getComp_id();
		int result = 0;
		String corp_img = null;
		Company companyEntity = recruitReqDto.toCompEntity(id);
		RecruitDetail recruitDetail = null;
		if(recruitReqDto.getFile() == null) {    // 파일이 없다면 
//			RecruitDetail 부분에 Corp_img 있음
			corp_img = principalDetail.getRecruitDetail().getCorp_img();
		}else {
//			파일이 있다면
			String imageFileName = UUID.randomUUID().toString().replaceAll("-","")
					+ recruitReqDto.getFile().getOriginalFilename();
			Path imageFilePath = Paths.get(filePath, "profile_img\\" + imageFileName);
			
			File file = new File(filePath + "profile_img");
			if(!file.exists()) {
				file.mkdirs();
			}
			try {
				Files.write(imageFilePath, recruitReqDto.getFile().getBytes());
			} catch (IOException e) {
				e.printStackTrace();
			}
			corp_img = "profile_img\\" + imageFileName;
			deleteCorpImgFile(principalDetail);
		}
		recruitDetail = recruitReqDto.toRecruitEntity(id, corp_img);
		
		result += recruitDetailRepository.updateRecruitDetail(RecruitDetail recruitDetail); 
		
		
		return false;
	}

}
