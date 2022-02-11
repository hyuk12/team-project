package com.springboot.jobkorea.web.dto.board;

import java.util.List;

import com.springboot.jobkorea.domain.Board.IndexBoard;

import lombok.Data;

@Data
public class IndexBoardRespDto {

	private List<IndexBoard> indexBoardList;
	private int indexBoardTotalCount;
}
