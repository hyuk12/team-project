package com.springboot.jobkorea.web.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.springboot.jobkorea.domain.Board.IndexBoard;
import com.springboot.jobkorea.service.JobsGetInfoService;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@RestController
public class JobBoardController {

	private final JobsGetInfoService jobsGetInfoService;
	
	@GetMapping({"/board/{boardId}"})
	public Object getBoard() {
		return null;
	}
	@GetMapping({"/index/board"})
	public Object getIndexBoard(IndexBoard indexBoard,@RequestParam int page) {
		return jobsGetInfoService.getIndexBoardList(indexBoard.getCompname(), page);
	}
	
}
