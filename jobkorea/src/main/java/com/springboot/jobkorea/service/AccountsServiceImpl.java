package com.springboot.jobkorea.service;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.springboot.jobkorea.config.auth.PrincipalDetail;
import com.springboot.jobkorea.domain.resume.Resume;
import com.springboot.jobkorea.domain.user.Company;
import com.springboot.jobkorea.domain.user.User;
import com.springboot.jobkorea.domain.user.UserRepository;
import com.springboot.jobkorea.web.dto.accounts.PasswordReqDto;
import com.springboot.jobkorea.web.dto.accounts.PasswordRespDto;
import com.springboot.jobkorea.web.dto.accounts.ProfileReqDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class AccountsServiceImpl implements AccountsService{
	
	private final UserRepository userRepository;
	
	
	@Value("${file.path}")
	private String filePath;
	
	@Override
	   public boolean usernameCheck(String username) {
	      int result = userRepository.checkUsernameByUsername(username);
	      if(result == 0) {
	         return true;
	      }else {
	         return false;
	      }
	      
	   }

	
	// principalDetils 에 이전 프로필 사진이 저장되어있음
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
	public boolean updateUser(PrincipalDetail principalDetail, ProfileReqDto profileReqDto) {
		  int id = principalDetail.getUsers().getId();
	      String password = principalDetail.getUsers().getPassword();
	      String profile_img = principalDetail.getResume().getProfile_img();
	      User userEntity = profileReqDto.toUserEntity(id, password);
	      Resume resumeEntity = null;
	      int result = 0;
	      
	      if(profileReqDto.getFile() == null) {
	         profile_img = principalDetail.getResume().getProfile_img();
	      }else {
	         String imageFileName = UUID.randomUUID().toString().replaceAll("-", "") + "_" +profileReqDto.getFile().getOriginalFilename();
	         Path imageFilePath = Paths.get(filePath, "profile_img\\" + imageFileName);
	         
	         File file = new File(filePath + "profile_img");
	         if(!file.exists()) {
	            file.mkdirs();
	         }
	         
	         try {
	            Files.write(imageFilePath,profileReqDto.getFile().getBytes());
	         } catch (IOException e) {
	            e.printStackTrace();
	         }
	         profile_img = "profile_img\\" + imageFileName;
	      }
	      
	      resumeEntity = profileReqDto.toResumeEntity(id, profile_img);
	      
	      result += userRepository.updateUserById(userEntity);
	      result += userRepository.updateUserDtlById(resumeEntity);
	      
	      if(result == 2) {
	         principalDetail.setUsers(userEntity);
	         principalDetail.setResume(resumeEntity);
	         return true;
	      }else {
	         return false;
	      }
	   }

	   
	   public boolean prePasswordCheck(String principalPassword ,String Password) {
	      BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
	      
	      return encoder.matches(Password, principalPassword); 
	   }

	

	// 비밀번호 변경
	public boolean passwordCheck(String principalPassword, String password) {
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		
		return encoder.matches(password,principalPassword);
	}
	
	@Override
	public PasswordRespDto updatePassword(PrincipalDetail principalDetail, PasswordReqDto passwordReqDto) {
		boolean prePasswordChcekFlag = passwordCheck(principalDetail.getPassword(), passwordReqDto.getPrePassword());
		boolean newPasswordChcekFlag = passwordCheck(principalDetail.getPassword(), passwordReqDto.getNewPassword());
		PasswordRespDto passwordRespDto = new PasswordRespDto();
		
		if (prePasswordChcekFlag == false) {
			// 이전 비밀번호가 일치하지 않음
			passwordRespDto.setCode(410);
			passwordRespDto.setMessage("이전 비밀번호가 일치하지않습니다.");
		} else if (newPasswordChcekFlag == true) {
			passwordRespDto.setCode(451);
			passwordRespDto.setMessage("새 비밀번호와 이전 비밀번호가 일치합니다.");
		} else {
			User userEntity = passwordReqDto.toEntity(principalDetail.getUsers().getId());
			int result = userRepository.updatePasswordById(userEntity);
			
			if (result == 1) {
				passwordRespDto.setCode(200);
				passwordRespDto.setMessage("비밀번호가 변경되었습니다.");
				principalDetail.getUsers().setPassword(userEntity.getPassword());
			}
		}
		
		return passwordRespDto;
	}

	/*
	@Override
	public boolean updateCompany(PrincipalDetail principalDetail, ProfileReqDto profileReqDto) {
		int id = principalDetail.getCompany().getId();
		String password = principalDetail.getCompany().getPassword();
		
		Company companyEntity = profileReqDto.toCompanyEntity(id);
		
		int result = 0;
		
		result += userRepository.updateCompanyById(companyEntity);
		
		System.out.println(result);
		
		if (result == 1) {
			principalDetail.setCompany(companyEntity);
			return true;
			
		} else {
			return false;
		}
		
	}
	*/
}
