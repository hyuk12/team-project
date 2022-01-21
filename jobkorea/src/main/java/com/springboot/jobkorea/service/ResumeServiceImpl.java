package com.springboot.jobkorea.service;

import java.nio.file.Path;

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

	@Override
	public boolean updateResume(PrincipalDetail principalDetail, ResumeReqDto resumeReqDto) {
		
		if(resumeReqDto.getFile() == null) {
			int id = principalDetail.getUsers().getId();
			int result = 0;
			
			String profile_img = principalDetail.getResume().getProfile_img();
			User userEntity = resumeReqDto.toUserEntity(id);
			Resume resumeEntity = resumeReqDto.toResumeEntity(id, profile_img);
			
			
			result += resumeRepository.updateUserById(userEntity);
			result += resumeRepository.updateResumeById(resumeEntity);
			
			if(result == 2) {
				principalDetail.setUsers(userEntity);
				principalDetail.setResume(resumeEntity);
				return true;
			}else {
				return false;
			}
		}else {
			
		}
		return false;
	}
}

	

