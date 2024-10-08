<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>상품명 검색</h3>
<form>
    <input type="text" placeholder="조회할 이름" name="keyword" value="${param.keyword}">
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
