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
import com.springboot.jobkorea.domain.anm.AnmRepository;
import com.springboot.jobkorea.domain.anm.Anm_edit;
import com.springboot.jobkorea.domain.user.Company;
import com.springboot.jobkorea.web.dto.anm.AnmEditReqDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class AnmServiceImpl implements AnmService {
	private final AnmRepository anmRepository;
	
	@Value("${file.path}")
	private String filePath;
	
	public void deleteProfileImgFile(PrincipalDetail principalDetail) {
		String imgUrl = principalDetail.getAnm_edit().getAnm_picture();
		if(!imgUrl.equals("img\\default.png")) {
			File file = new File(filePath + imgUrl);
			if(file.exists()) {
				file.delete();
			}
		}
	}

	@Override
	public boolean insertAnm(PrincipalDetail principalDetail, AnmEditReqDto anmEditReqDto) {
		int id = principalDetail.getCompany().getId();
		int result = 0;
		String anm_picture = null;
		Company compEntity = anmEditReqDto.toCompEntity(id);
		System.out.println(compEntity);
		Anm_edit anmEntity = null;
		
		if(anmEditReqDto.getMultipartFile() == null) {
			anm_picture = principalDetail.getAnm_edit().getAnm_picture();
		}else {
			String imgFileName = UUID.randomUUID().toString().replaceAll("-", "") + "_" + anmEditReqDto.getMultipartFile().getOriginalFilename();
			Path imgFilePath = Paths.get(filePath, "img\\" + imgFileName);
			
			File file = new File(filePath + "img");
			if(!file.exists()) {
				file.mkdirs();
			}
			try {
				Files.write(imgFilePath, anmEditReqDto.getMultipartFile().getBytes());
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			anm_picture = "img\\" + imgFileName;
		}
		anmEntity = anmEditReqDto.toAnmEntity(id, anm_picture);
		System.out.println(anmEntity);
		System.out.println(compEntity);
		result += anmRepository.updateAnmById(anmEntity);
		result += anmRepository.updateCompById(compEntity);
		
		if(result == 2) {
			principalDetail.setCompany(compEntity);
			principalDetail.setAnm_edit(anmEntity);
			return true;
		}else {
			return false;
		}
	}
}
