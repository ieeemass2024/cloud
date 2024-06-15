package com.example.logistics.config;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@MapperScan("com.example.logistics.mapper")
public class MyBatisConfig {
}
