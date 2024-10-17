package com.example.spring240924.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface Mapper03 {

    @Select("""
            SELECT Description
            FROM Categories
            WHERE CategoryId = 1
            """)
    String getDescription();
}
