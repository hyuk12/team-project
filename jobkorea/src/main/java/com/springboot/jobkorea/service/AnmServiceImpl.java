package com.springboot.jobkorea.service;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.springboot.jobkorea.config.auth.PrincipalDetail;
import com.springboot.jobkorea.domain.anm.AnmRepository;
import com.springboot.jobkorea.domain.anm.Anm_edit;
import com.springboot.jobkorea.domain.anm.IndexBoard;
import com.springboot.jobkorea.domain.user.Company;
import com.springboot.jobkorea.domain.user.UserRepository;
import com.springboot.jobkorea.web.dto.anm.AnmEditReqDto;
import com.springboot.jobkorea.web.dto.anm.AnmRespDto;
import com.springboot.jobkorea.web.dto.anm.IndexBoardRespDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class AnmServiceImpl implements AnmService {
	private final AnmRepository anmRepository;
	private final UserRepository userRepository;
	
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



	@Override
	public AnmRespDto getBoard(int boardId) {
		AnmRespDto anmRespDto = anmRepository.getBoardById(boardId).toAnmRespDto();
		Company compEntity = userRepository.getCompById(anmRespDto.getComp_id());
		anmRespDto.setCompname(compEntity.getCompname());
		anmRespDto.setAnm_picture(anmRespDto.getAnm_picture());;
		return anmRespDto;
	}



	@Override
	public IndexBoardRespDto getIndexBoardList(String compname, int page) {
		List<IndexBoard> indexBoardListAll = anmRepository.getIndexBoardListByCompname(compname);
		int indexBoardListTotalCount = indexBoardListAll.size();
		int startIndex = page * 3;
		int endIndex = page + 3;
		List<IndexBoard> indexBoardList = new ArrayList<IndexBoard>();
		for(int i = startIndex; i < endIndex && i < indexBoardListTotalCount; i++) {
			indexBoardList.add(indexBoardListAll.get(i));
		}
		IndexBoardRespDto indexboardRespDto = new IndexBoardRespDto();
		indexboardRespDto.setIndexBoardList(indexBoardList);
		indexboardRespDto.setIndexBoardTotalCount(indexBoardListTotalCount);
		return indexboardRespDto;
	}
}
