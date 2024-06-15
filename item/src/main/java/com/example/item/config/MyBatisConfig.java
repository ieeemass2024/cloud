package com.example.item.config;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@MapperScan("com.example.item.mapper")
public class MyBatisConfig {
}
