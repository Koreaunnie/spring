<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>가격으로 상품 검색</h3>
<form>
    <input type="number" step="0.01" placeholder="부터" name="min" value="${param.min}">
    ~
    <input type="number" step="0.01" placeholder="까지" name="max" value="${param.max}">
    <br>
    <button>검색</button>
</form>

<table>
    <thead>
    <tr>
        <td>번호</td>
        <td>상품명</td>
        <td>공급자 번호</td>
        <td>카테고리 번호</td>
        <td>단위</td>
        <td>가격</td>
    </tr>
    </thead>

    <tbody>
    <c:forEach items="${productList}" var="product">
        <tr>
            <td>${product.id}</td>
            <td>${product.name}</td>
            <td>${product.supplierId}</td>
            <td>${product.categoryId}</td>
            <td>${product.unit}</td>
            <td>${product.price}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
