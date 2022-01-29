package com.springboot.jobkorea.web.controller;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RestController;

import com.springboot.jobkorea.config.auth.PrincipalDetail;
import com.springboot.jobkorea.service.AnmService;
import com.springboot.jobkorea.web.dto.anm.AnmEditReqDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@RestController
public class AnmController {

	private final AnmService anmService;
	
	
	@PutMapping("/anm/anm_edit")
	public boolean insertAnm(@AuthenticationPrincipal PrincipalDetail principalDetail, AnmEditReqDto anmEditReqDto) {
		return anmService.insertAnm(principalDetail, anmEditReqDto);
	}
}
