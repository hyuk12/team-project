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
	
	

	@Override
	public boolean insertAnm(PrincipalDetail principalDetail, AnmEditReqDto anmEditReqDto) {
		String imgFileName = UUID.randomUUID().toString().replaceAll("-", "") + "_" + anmEditReqDto.getFile().getOriginalFilename();
		String anm_picture = "img/" + imgFileName;
		Path imgPath = Paths.get(filePath, anm_picture);
		int comp_id = principalDetail.getCompany().getComp_id();
		
		
			File file = new File(filePath + "img");
			if(!file.exists()) {
				file.mkdirs();
			}
			try {
				Files.write(imgPath,anmEditReqDto.getFile().getBytes());
			} catch (IOException e) {
				e.printStackTrace();
			}
			
		
		
		Anm_edit anmEntity = anmEditReqDto.toAnmEntity(comp_id, anm_picture);
		
		System.out.println(anmEntity);
		int result = anmRepository.insertAnm(anmEntity);
		
		if(result == 1) {
			
			return true;
		}else {
			return false;
		}
	}
}
