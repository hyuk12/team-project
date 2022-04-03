
package com.springboot.jobkorea.domain.Board;


import java.time.LocalDateTime;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder

@NoArgsConstructor
@AllArgsConstructor
@Data
public class IndexBoard {

	private int id;
	
	private String board_img;
	private String board_title;
	
	private int comp_id;
	private String compname;
	private String anm_title;
	private String anm_picture;
	
	private LocalDateTime create_date;

	private LocalDateTime update_date;
}
