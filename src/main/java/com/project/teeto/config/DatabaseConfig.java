package com.project.teeto.config;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@MapperScan(value = {
        "com.project.teeto"})
public class DatabaseConfig {
}
