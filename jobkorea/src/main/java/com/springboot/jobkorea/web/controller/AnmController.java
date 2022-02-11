package com.springboot.jobkorea.web.controller;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.springboot.jobkorea.config.auth.PrincipalDetail;
import com.springboot.jobkorea.domain.anm.IndexBoard;
import com.springboot.jobkorea.service.AnmService;
import com.springboot.jobkorea.web.dto.anm.AnmEditReqDto;
import com.springboot.jobkorea.web.dto.anm.AnmRespDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@RestController
public class AnmController {

	private final AnmService anmService;
	
	@PostMapping("/upload")
	public boolean uploadInsert(@AuthenticationPrincipal PrincipalDetail principalDetail, AnmEditReqDto anmEditReqDto) {
		
		return anmService.insertAnm(principalDetail, anmEditReqDto);
	}
	
	@GetMapping("/board/{boardId}")
	public Object getBoard(@PathVariable int boardId) {
		return anmService.getBoard(boardId);
	}
	
	@GetMapping("/index/board")
	public Object getIndexBoard(AnmRespDto anmRespDto , @RequestParam int page) {
		System.out.println(anmRespDto.getCompname());
		return anmService.getIndexBoardList(anmRespDto.getCompname(),page);
	}
	
	
}
