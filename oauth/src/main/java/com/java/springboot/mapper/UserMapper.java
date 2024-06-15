package com.java.springboot.mapper;

import com.java.springboot.bean.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserMapper {

    User findByUsername(String username);
}
