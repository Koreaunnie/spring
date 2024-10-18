package com.example.spring240924.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface Mapper06 {

    @Select("""
            SELECT CustomerName
            FROM Customers
            WHERE CustomerId = #{id}
            """)
    String select01(Integer id);

    @Select("""
            SELECT ProductName
            FROM Products
            WHERE ProductId = #{id}
            """)
    String select02(int id);

    @Select("""
            SELECT CustomerName
            FROM Customers
            WHERE Country IN (#{c1}, #{c2})
            ORDER BY CustomerName
            """)
    List<String> select03(String c1, String c2);

    @Select("""
            SELECT ProductName
            FROM Products
            WHERE Price > #{price1} AND Price < #{price2}
            """)
    List<String> select04(int price1, int price2);

    @Select("""
            SELECT BirthDate
            FROM Employees
            WHERE BirthDate BETWEEN date1 and date2
            """)
    List<String> select05(String date1, String date2);
}
