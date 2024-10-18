package com.example.spring240924.mapper;

import com.example.spring240924.dto.c35.Dto59;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface Mapper05 {
    @Select("""
            SELECT student_id studentId,
            model_number ModelNumber,
            product_name productName,
            birth_date birthDate,
            inserted inserted,
            score score
            FROM db1.my_table59
            """)
    List<Dto59> select1();

    List<Dto59> select2();
}
