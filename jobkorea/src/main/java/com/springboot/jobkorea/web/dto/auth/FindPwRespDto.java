package com.springboot.jobkorea.web.dto.auth;

import lombok.Data;

@Data
public class FindPwRespDto<T> {
	private int code;
	private T data;
	
}
