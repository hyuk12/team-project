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
import com.springboot.jobkorea.domain.resume.Resume;
import com.springboot.jobkorea.domain.resume.ResumeRepository;
import com.springboot.jobkorea.domain.user.User;
import com.springboot.jobkorea.web.dto.resume.ResumeReqDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class ResumeServiceImpl implements ResumeService{
	
	private final ResumeRepository resumeRepository;
	
	@Value("${file.path}")
	private String filePath;
	
	public void deleteProfileImgFile(PrincipalDetail principalDetail) {
		String imgUrl = principalDetail.getResume().getProfile_img();
		if(!imgUrl.equals("profile_img\\default.png")) {
			File file = new File(filePath + imgUrl);
			if(file.exists()) {
				file.delete();
			}
		}
	}

	@Override
	public boolean updateResume(PrincipalDetail principalDetail, ResumeReqDto resumeReqDto) {
		int id = principalDetail.getUsers().getId();
		int result = 0;
		String profile_img = null;
		User userEntity = resumeReqDto.toUserEntity(id);
		Resume resumeEntity = null;
		if(resumeReqDto.getFile() == null) {
			
			profile_img = principalDetail.getResume().getProfile_img();
			
			
		}else {
			String imageFileName = UUID.randomUUID().toString().replaceAll("-", "") + resumeReqDto.getFile().getOriginalFilename();
			Path imageFilePath = Paths.get(filePath, "profile_img\\" +imageFileName);
			
			File file = new File(filePath + "profile_img");
			if(!file.exists()) {
				file.mkdirs();
				
			}
			try {
				Files.write(imageFilePath, resumeReqDto.getFile().getBytes());
			} catch (IOException e) {
				e.printStackTrace();
			}
			profile_img = "profile_img\\" + imageFileName;
			deleteProfileImgFile(principalDetail);
			
		}
			
		resumeEntity = resumeReqDto.toResumeEntity(id, profile_img);
		
		result += resumeRepository.updateUserById(userEntity);
		result += resumeRepository.updateResumeById(resumeEntity);
			
		if(result == 2) {
				
			principalDetail.setUsers(userEntity);
			principalDetail.setResume(resumeEntity);
				return true;
			}else {
				return false;
			}
		}
	}


	

