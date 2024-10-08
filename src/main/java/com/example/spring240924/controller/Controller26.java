package com.example.spring240924.controller;

import com.example.spring240924.dto.c26.Category;
import com.example.spring240924.dto.c26.Customer;
import com.example.spring240924.dto.c26.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("main26")
public class Controller26 {
    @Autowired
    DataSource dataSource;

    @GetMapping("sub1")
    public void sub1(Model model, String categoryId, String order) throws Exception {
        // 카테고리 조회 쿼리
        String categorySQL = """
                SELECT *
                FROM Categories
                ORDER BY CategoryID
                """;
        Connection con = dataSource.getConnection();
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery(categorySQL);
        try (con; stmt; rs) {
            List<Category> categories = new ArrayList<>();
            while (rs.next()) {
                Category category = new Category();
                category.setId(rs.getString("CategoryID"));
                category.setName(rs.getString("CategoryName"));
                category.setDescription(rs.getString("Description"));
                categories.add(category);
            }
            model.addAttribute("categoryList", categories);
        }

        // 상품 조회 쿼리
        String productSQL = """
                SELECT *
                FROM Products
                """;
        if (categoryId != null && !categoryId.equals("0")) {
            productSQL += STR."""
                    WHERE CategoryId = \{categoryId}
                    """;
        }

        // 정렬 쿼리
        if (order != null) {
            productSQL += switch (order) {
                case "name" -> """
                        ORDER BY ProductName
                        """;
                case "price" -> """
                        ORDER BY Price
                        """;
                default -> "";
            };
        }
        Connection con2 = dataSource.getConnection();
        Statement stmt2 = con2.createStatement();
        ResultSet rs2 = stmt2.executeQuery(productSQL);
        try (con2; stmt2; rs2) {
            List<Product> products = new ArrayList<>();
            while (rs2.next()) {
                Product product = new Product();
                product.setId(rs2.getString("ProductID"));
                product.setName(rs2.getString("ProductName"));
                product.setCategoryId(rs2.getString("CategoryID"));
                product.setSupplierId(rs2.getString("SupplierID"));
                product.setUnit(rs2.getString("Unit"));
                product.setPrice(rs2.getString("Price"));
                products.add(product);
            }
            model.addAttribute("productList", products);
        }
    }

    @RequestMapping("sub2")
    public void sub2(Model model, String country, String order) throws Exception {
        // 국가 조회 쿼리
        String countrySQL = """
                SELECT DISTINCT Country
                FROM Customers
                ORDER BY Country
                """;
        Connection con = dataSource.getConnection();
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery(countrySQL);
        try (con; stmt; rs) {
            List<String> countries = new ArrayList<>();
            while (rs.next()) {
                countries.add(rs.getString("Country"));
            }
            model.addAttribute("countryList", countries);
        }


        // 고객 조회 쿼리
        String customerSQL = STR."""
                SELECT * 
                FROM Customers
                WHERE Country = '\{country}'
                """;

        // 정렬 쿼리
        if (order != null) {
            customerSQL += switch (order) {
                case "postal" -> """
                        ORDER BY PostalCode
                        """;
                case "name" -> """
                        ORDER BY CustomerName                        
                        """;
                case "contact" -> """
                        ORDER BY ContactName
                        """;
                default -> "";
            };
        }

        Connection con2 = dataSource.getConnection();
        Statement stmt2 = con2.createStatement();
        ResultSet rs2 = stmt2.executeQuery(customerSQL);
        try (con2; stmt2; rs2) {
            List<Customer> customers = new ArrayList<>();
            while (rs2.next()) {
                Customer customer = new Customer();
                customer.setId(rs2.getString("CustomerID"));
                customer.setCustomerName(rs2.getString("CustomerName"));
                customer.setContactName(rs2.getString("ContactName"));
                customer.setAddress(rs2.getString("Address"));
                customer.setCity(rs2.getString("City"));
                customer.setPostalCode(rs2.getString("PostalCode"));
                customer.setCountry(rs2.getString("Country"));
                customers.add(customer);
            }
            model.addAttribute("customerList", customers);
        }
    }

    @GetMapping("sub3")
    public void sub3(Model model, @RequestParam(defaultValue = "") String keyword) throws Exception {
        String sql = STR."""
                SELECT *
                FROM Customers
                WHERE CustomerName LIKE '%\{keyword}%'
                """;

        Connection con = dataSource.getConnection();
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery(sql);

        List<Customer> customers = new ArrayList<>();
        try (con; stmt; rs) {
            while (rs.next()) {
                Customer customer = new Customer();
                customer.setId(rs.getString("CustomerID"));
                customer.setCustomerName(rs.getString("CustomerName"));
                customer.setContactName(rs.getString("ContactName"));
                customer.setAddress(rs.getString("Address"));
                customer.setCity(rs.getString("City"));
                customer.setPostalCode(rs.getString("PostalCode"));
                customer.setCountry(rs.getString("Country"));
                customers.add(customer);
            }
            model.addAttribute("customerList", customers);
        }
    }

    @GetMapping("sub4")
    public void sub4(Model model, @RequestParam(defaultValue = "") String keyword) throws Exception {
        String sql = STR."""
                SELECT *
                FROM Products
                WHERE ProductName LIKE '%\{keyword}%'
                """;

        Connection con = dataSource.getConnection();
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery(sql);
        try (con; stmt; rs) {
            List<Product> products = new ArrayList<>();
            while (rs.next()) {
                Product product = new Product();
                product.setId(rs.getString("ProductID"));
                product.setName(rs.getString("ProductName"));
                product.setSupplierId(rs.getString("SupplierID"));
                product.setCategoryId(rs.getString("CategoryID"));
                product.setUnit(rs.getString("Unit"));
                product.setPrice(rs.getString("Price"));
                products.add(product);
            }
            model.addAttribute("productList", products);
        }
    }

    @RequestMapping("sub5")
    public void sub5(Model model,
                     @RequestParam(defaultValue = "0") String min,
                     @RequestParam(defaultValue = "200000000000") String max) throws Exception {
        String sql = STR."""
                SELECT *
                FROM Products
                WHERE Price BETWEEN '\{min}' AND '\{max}'
                ORDER BY Price
                """;

        Connection con = dataSource.getConnection();
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery(sql);
        try (con; stmt; rs) {
            List<Product> products = new ArrayList<>();
            while (rs.next()) {
                Product product = new Product();
                product.setId(rs.getString("ProductID"));
                product.setName(rs.getString("ProductName"));
                product.setSupplierId(rs.getString("SupplierID"));
                product.setCategoryId(rs.getString("CategoryID"));
                product.setUnit(rs.getString("Unit"));
                product.setPrice(rs.getString("Price"));
                products.add(product);
            }
            model.addAttribute("productList", products);
        }
    }
}
