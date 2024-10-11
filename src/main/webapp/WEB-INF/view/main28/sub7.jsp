<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:if test="${not empty message}">
    <h3 style="background: yellow">${message}</h3>
</c:if>

<h3>상품 조회</h3>
<form>
    <input value="${param.id}" type="text" placeholder="고객번호" name="id">
    <button>조회</button>
</form>

<c:if test="${not empty product}">
    <div>
        <input type="text" value="${product.id}">
    </div>
    <div>
        <input type="text" value="${product.name}">
    </div>
    <div>
        <input type="text" value="${product.supplierId}">
    </div>
    <div>
        <input type="text" value="${product.categoryId}">
    </div>
    <div>
        <input type="number" value="${product.unit}">
    </div>
    <div>
        <input type="number" value="${product.price}">
    </div>

    <div>
        <form action="/main28/sub8" method="post">
            <input type="hidden" name="id" value="${product.id}">
            <button style="background: crimson; color: white">삭제</button>
        </form>
    </div>
</c:if>

<c:if test="${empty product}">
    <h3>${param.id}번 상품이 조회되지 않습니다.</h3>
</c:if>

</body>
</html>
