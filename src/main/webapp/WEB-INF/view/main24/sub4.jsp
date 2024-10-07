<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>

    <style>
        table {
            border-collapse: collapse;
            width: 100%;

        }

        tr, th, td {
            border: 1px solid #000;
        }
    </style>
</head>
<body>
<table>
    <thead>
    <tr>
        <th>상품번호</th>
        <th>상품명</th>
        <th>단위</th>
        <th>가격</th>
    </tr>
    </thead>

    <tbody>
    <c:forEach items="${productList}" var="product">
        <tr>
            <td>${product.id}</td>
            <td>${product.name}</td>
            <td>${product.unit}</td>
            <td>${product.price}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
