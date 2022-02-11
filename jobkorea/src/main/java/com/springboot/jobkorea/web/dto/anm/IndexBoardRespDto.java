package com.springboot.jobkorea.web.dto.anm;

import java.util.List;

import com.springboot.jobkorea.domain.anm.IndexBoard;

import lombok.Data;

@Data
public class IndexBoardRespDto {
	private List<IndexBoard> indexBoardList;
	private int indexBoardTotalCount;
}
