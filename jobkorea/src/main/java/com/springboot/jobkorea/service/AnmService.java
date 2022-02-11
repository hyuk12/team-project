package com.springboot.jobkorea.service;

import com.springboot.jobkorea.config.auth.PrincipalDetail;
import com.springboot.jobkorea.web.dto.anm.AnmEditReqDto;
import com.springboot.jobkorea.web.dto.anm.AnmRespDto;
import com.springboot.jobkorea.web.dto.anm.IndexBoardRespDto;

public interface AnmService {
	public boolean insertAnm(PrincipalDetail principalDetail, AnmEditReqDto anmEditReqDto );
	public AnmRespDto getBoard(int boardId);
	public IndexBoardRespDto getIndexBoardList(String compname, int page);
}
