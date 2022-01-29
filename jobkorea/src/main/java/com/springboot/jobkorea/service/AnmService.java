package com.springboot.jobkorea.service;

import com.springboot.jobkorea.config.auth.PrincipalDetail;
import com.springboot.jobkorea.web.dto.anm.AnmEditReqDto;

public interface AnmService {
	public boolean insertAnm(PrincipalDetail principalDetail, AnmEditReqDto anmEditReqDto );
}
