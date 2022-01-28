package com.springboot.jobkorea.config;

import org.springframework.beans.factory.annotation.Value;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.resource.PathResourceResolver;

@Configuration
public class WebMvcConfig implements WebMvcConfigurer {
	
	@Value("${file.path}")
	private String filePath;
	
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		WebMvcConfigurer.super.addResourceHandlers(registry);
		registry.addResourceHandler("/image/**") // /image/** 들어있는 요청은 이 밑을 실행
		.addResourceLocations("file:///" + filePath)
		.setCachePeriod(60*60)  // 캐시 유지시간 60*60 == 3600s
		.resourceChain(true)  
		.addResolver(new PathResourceResolver());
	}
}
