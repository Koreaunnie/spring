package com.example.spring240924.mapper;

import com.example.spring240924.dto.c34.*;
import org.apache.ibatis.annotations.*;

import java.time.LocalDate;
import java.util.List;
import java.util.Map;

@Mapper
public interface Mapper04 {
    @Select("""
            SELECT ProductName
            FROM Products
            WHERE ProductId = 1
            """)
    String getProductName();


    @Select("""
            SELECT ProductName
            FROM Products
            WHERE ProductId = 1
            """)
//    @Insert()
//    @Delete()
//    @Update()
    String select2();

    @Select("""
            SELECT Price
            FROM Products
            WHERE ProductId = 1
            """)
    String select3();

    @Select("""
            SELECT Price
            FROM Products
            WHERE ProductId = 1
            """)
    Double select4();

    @Select("""
            SELECT LastName
            FROM Employees
            WHERE EmployeeId = 1
            """)
    String select5();

    @Select("""
            SELECT CategoryId
            FROM Products
            WHERE ProductId = 2
            """)
    Integer select6();

    @Select("""
            SELECT BirthDate
            FROM Employees
            WHERE EmployeeId = 2
            """)
    LocalDate select7();

    @Select("""
            SELECT DISTINCT Country
            FROM Customers
            """)
    List<String> select8();

    @Select("""
            SELECT LastName
            FROM Employees
            """)
    List<String> select9();

    @Select("""
            SELECT BirthDate
            FROM Employees
            """)
    List<LocalDate> select10();

    @Select("""
            SELECT Price
            FROM Products
            ORDER BY Price DESC 
            LIMIT 5
            """)
    List<Double> select11();

    @Select("""
            SELECT CustomerName, City, Country
            FROM Customers
            WHERE CustomerId = 1
            """)
    Map<String, String> select12();

    @Select("""
            SELECT CustomerName 이름, City 도시, Country 국가
            FROM Customers
            WHERE CustomerId = 1
            """)
    Map<String, String> select13();

    @Select("""
            SELECT ProductName name, Price, CategoryId
            FROM Products
            WHERE ProductId = 1
            """)
    Map<String, Object> select14();

    @Select("""
            SELECT CONCAT(FirstName, ' ', LastName) name, BirthDate birth
            FROM Employees
            WHERE EmployeeId = 1
            """)
    Map<String, Object> select15();

    @Select("""
            SELECT CustomerName name, Address address, PostalCode post
            FROM Customers
            WHERE CustomerId = 3
            """)
    Map<String, Object> select16();

    @Select("""
            SELECT CustomerName name, Address address, PostalCode post
            FROM Customers
            WHERE CustomerId = 3
            """)
    Customer select17();

    @Select("""
            SELECT ProductId id, ProductName name, Price price
            FROM Products
            WHERE ProductId = 1
            """)
    Product select18();

    @Select("""
            SELECT FirstName, LastName, BirthDate
            FROM Employees
            WHERE EmployeeId = 3
            """)
    Employee select19();

    @Select("""
            SELECT SupplierId, SupplierName, Phone
            FROM Suppliers
            WHERE SupplierId = 2
            """)
    Supplier select20();

    @Select("""
            SELECT o.OrderId, o.OrderDate, c.CustomerName
            FROM Orders o JOIN Customers c ON o.CustomerId = c.CustomerId
            WHERE o.OrderId = 10248
            """)
    Order select21();

    @Select("""
            SELECT CustomerName name, Address address, PostalCode post
            FROM Customers
            LIMIT 3
            """)
    List<Map<String, String>> select22();

    @Select("""
            SELECT ProductName, CategoryName, Unit, Price
            FROM Products p JOIN Categories c ON p.CategoryId = c.CategoryId
            ORDER BY Price DESC
            LIMIT 5
            """)
    List<Map<String, Object>> select23();

    @Select("""
            SELECT ProductName, Quantity, Price
            FROM Orders o JOIN OrderDetails od ON o.OrderId = od.OrderId
                          JOIN Products p ON od.ProductId = p.ProductId
            WHERE o.OrderId = 10248
            """)
    List<Map<String, Object>> select24();

    @Select("""
            SELECT FirstName, LastName, BirthDate
            FROM Employees
            """)
    List<Employee> select25();


    @Select("""
            SELECT SupplierId, SupplierName, Phone
            FROM Suppliers
            WHERE Country = 'USA'
            """)
    List<Supplier> select26();

    @Select("""
            SELECT o.OrderDate, c.CustomerName
            FROM Orders o 
            JOIN Customers c ON o.CustomerId = c.CustomerId
            WHERE o.OrderDate LIKE '1996-07-__'
            """)
    List<Order> select27();
}
