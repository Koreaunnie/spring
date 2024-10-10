package com.example.spring240924.controller;

import com.example.spring240924.dto.c26.Customer;
import com.example.spring240924.dto.c26.Product;
import com.example.spring240924.dto.c27.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.sql.DataSource;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("main27")
public class Controller27 {
    @Autowired
    DataSource dataSource;

    @GetMapping("sub1")
    public void sub1(String id, Model model) throws SQLException {
        // SQL injection
        String sql = STR."""
                SELECT *
                FROM Customers
                WHERE CustomerId = \{id}
                """;
        Connection conn = dataSource.getConnection();
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery(sql);

        try (conn; stmt; rs) {
            List<Customer> customers = new ArrayList<>();
            while (rs.next()) {
                Customer customer = new Customer();
                customer.setId(rs.getString("CustomerId"));
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

    // Statement 객체는 SQL injection 위험 있음
    // -> PreparedStatement 객체를 사용해야함
    @GetMapping("sub2")
    public String sub2(String id, Model model) throws SQLException {
        String sql = """
                SELECT *
                FROM Customers
                WHERE CustomerId = ?
                """;

        Connection conn = dataSource.getConnection();
        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, id);
        ResultSet rs = pstmt.executeQuery();

        try (conn; pstmt; rs) {
            List<Customer> customers = new ArrayList<>();
            while (rs.next()) {
                Customer customer = new Customer();
                customer.setId(rs.getString("CustomerId"));
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

        return "/main27/sub1";
    }

    // /main26/sub5 과 같아보이지만
    // PreparedStatement를 썼기 때문에
    // SQL injection에 안전함
    @GetMapping("sub3")
    public String sub3(String from, String to, Model model) throws SQLException {
        String sql = """
                SELECT *
                FROM Products
                WHERE Price BETWEEN ? AND ?
                ORDER BY Price
                """;

        Connection conn = dataSource.getConnection();
        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, from);
        pstmt.setString(2, to);
        ResultSet rs = pstmt.executeQuery();

        try (conn; pstmt; rs) {
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
        return "/main26/sub5";
    }

    @GetMapping("sub4")
    public void sub4(String start, String end, Model model) throws SQLException {
        String sql = """
                SELECT *
                FROM Orders
                WHERE OrderDate BETWEEN ? AND ?
                ORDER BY OrderDate
                """;

        Connection conn = dataSource.getConnection();
        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, start);
        pstmt.setString(2, end);
        ResultSet rs = pstmt.executeQuery();

        try (conn; pstmt; rs) {
            List<Order> orders = new ArrayList<>();
            while (rs.next()) {
                Order order = new Order();
                order.setOrderId(rs.getString("OrderID"));
                order.setCustomerId(rs.getString("CustomerID"));
                order.setEmployeeId(rs.getString("EmployeeID"));
                order.setOrderDate(rs.getString("OrderDate"));
                order.setShipperId(rs.getString("ShipperID"));
                orders.add(order);
            }
            model.addAttribute("orderList", orders);
        }
    }

    // 페이징
    @GetMapping("sub5")
    public void sub5(Model model, @RequestParam(value = "page", defaultValue = "1") Integer pageNumber,
                     @RequestParam(value = "count", defaultValue = "10") Integer pageCount) throws SQLException {

        // 총 레코드 수 조회
        String numberOfRowsSQL = """
                SELECT COUNT(*)
                FROM Customers
                """;

        Connection conn = dataSource.getConnection();
        PreparedStatement pstmt = conn.prepareStatement(numberOfRowsSQL);
        ResultSet rs = pstmt.executeQuery();
        try (conn; pstmt; rs) {
            // 총 레코드 수
            Integer numberOfRows = rs.next() ? rs.getInt(1) : 0;

            // 마지막 페이지 번호
            Integer lastPageNumber = (numberOfRows - 1) / pageCount + 1;

            model.addAttribute("lastPageNumber", lastPageNumber);

            // 현재 페이지 active
            model.addAttribute("currentPageNumber", pageNumber);

            // 페이지 번호의 끝 (맨 오른쪽) (10개씩 보여줄 때)
            Integer endPageNumber = ((pageNumber - 1) / 10 + 1) * 10;
            // 페이지 번호의 시작 (맨 왼쪽) (10개씩 보여줄 때)
            Integer beginPageNumber = endPageNumber - 9;

            // 다음 버튼 클릭 시 나타날 페이지 번호
            Integer nextPageNumber = endPageNumber + 1;
            // 이전 버튼 클릭 시 나타날 페이지 번호
            Integer prevPageNumber = beginPageNumber - 1;

            model.addAttribute("endPageNumber", Math.min(endPageNumber, lastPageNumber)); // Math는 최종 페이지 이후로 for문 돌지 않게 함
            model.addAttribute("beginPageNumber", beginPageNumber);

            // 페이지 번호의 끝 (맨 오른쪽) 도달 시 다음 버튼 없애기
            if (nextPageNumber <= lastPageNumber) {
                model.addAttribute("nextPageNumber", nextPageNumber);
            }

            // 페이지 번호의 시작 (맨 왼쪽) 도달 시 이전 버튼 없애기
            if (prevPageNumber > 0) {
                model.addAttribute("prevPageNumber", prevPageNumber);
            }
        }

        // 고객 목록 조회
        String sql = """
                SELECT *
                FROM Customers
                ORDER BY CustomerId
                LIMIT ?, ?
                """;

        Integer offset = (pageNumber - 1) * pageCount;

        Connection conn2 = dataSource.getConnection();
        PreparedStatement pstmt2 = conn2.prepareStatement(sql);
        pstmt2.setInt(1, offset);
        pstmt2.setInt(2, pageCount);
        ResultSet rs2 = pstmt2.executeQuery();

        try (conn2; pstmt2; rs2) {
            List<Customer> customers = new ArrayList<>();
            while (rs2.next()) {
                Customer customer = new Customer();
                customer.setId(rs2.getString("CustomerId"));
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

    // 최신 주문 순으로 각 페이지에 20개씩 주문 조회
    @RequestMapping("sub6")
    public void sub6(Model model, @RequestParam(value = "page", defaultValue = "1") Integer pageNumber,
                     @RequestParam(value = "count", defaultValue = "20") Integer pageCount) throws SQLException {

        // 총 레코드(행) 수 조회
        String numberOfRowSQL = """
                SELECT COUNT(*)
                FROM Orders
                """;
        Connection conn = dataSource.getConnection();
        PreparedStatement pstmt = conn.prepareStatement(numberOfRowSQL);
        ResultSet rs = pstmt.executeQuery();

        try (conn; pstmt; rs;) {
            // 총 레코드 수
            Integer numberOfRows = rs.next() ? rs.getInt(1) : 0;

            // 마지막 페이지 번호
            Integer lastPageNumber = (numberOfRows - 1) / pageCount + 1;

            model.addAttribute("lastPageNumber", lastPageNumber);

            // 현재 페이지 active
            model.addAttribute("currentPageNumber", pageNumber);

            // 페이지 번호의 끝 (맨 오른쪽) (10개씩 보여줄 때)
            Integer endPageNumber = ((pageNumber - 1) / 10 + 1) * 10;
            // 페이지 번호의 시작 (맨 왼쪽) (10개씩 보여줄 때)
            Integer beginPageNumber = endPageNumber - 9;

            // 다음 버튼 클릭 시 나타날 페이지 번호
            Integer nextPageNumber = endPageNumber + 1;
            // 이전 버튼 클릭 시 나타날 페이지 번호
            Integer prevPageNumber = beginPageNumber - 1;

            model.addAttribute("endPageNumber", Math.min(endPageNumber, lastPageNumber)); // Math는 최종 페이지 이후로 for문 돌지 않게 함
            model.addAttribute("beginPageNumber", beginPageNumber);

            // 페이지 번호의 끝 (맨 오른쪽) 도달 시 다음 버튼 없애기
            if (nextPageNumber <= lastPageNumber) {
                model.addAttribute("nextPageNumber", nextPageNumber);
            }

            // 페이지 번호의 시작 (맨 왼쪽) 도달 시 이전 버튼 없애기
            if (prevPageNumber > 0) {
                model.addAttribute("prevPageNumber", prevPageNumber);
            }
        }

        // 주문 목록 조회
        String sql = """
                SELECT *
                FROM Orders
                ORDER BY OrderDate DESC
                LIMIT ?, ?
                """;

        Integer offset = (pageNumber - 1) * pageCount;

        Connection conn2 = dataSource.getConnection();
        PreparedStatement pstmt2 = conn2.prepareStatement(sql);
        pstmt2.setInt(1, offset);
        pstmt2.setInt(2, pageCount);
        ResultSet rs2 = pstmt2.executeQuery();

        try (conn2; pstmt2; rs2) {
            List<Order> orders = new ArrayList<>();
            while (rs2.next()) {
                Order order = new Order();
                order.setOrderId(rs2.getString("OrderID"));
                order.setCustomerId(rs2.getString("CustomerID"));
                order.setEmployeeId(rs2.getString("EmployeeID"));
                order.setOrderDate(rs2.getString("OrderDate"));
                order.setShipperId(rs2.getString("ShipperID"));
                orders.add(order);
            }
            model.addAttribute("orderList", orders);
        }
    }
}
