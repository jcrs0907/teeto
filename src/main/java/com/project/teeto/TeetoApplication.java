package com.project.teeto;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
public class TeetoApplication extends SpringBootServletInitializer {

	//로컬 개발 가능
	public static void main(String[] args) {
		SpringApplication.run(TeetoApplication.class, args);
	}

	//서버배포시
//	@Override
//	protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
//		return builder.sources(TeetoApplication.class);
//	}


}
