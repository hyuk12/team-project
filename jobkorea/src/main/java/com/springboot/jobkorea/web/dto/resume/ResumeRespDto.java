package com.springboot.jobkorea.web.dto.resume;

import lombok.Data;

@Data
public class ResumeRespDto<T> {
	private int code;
	private T data;
}
