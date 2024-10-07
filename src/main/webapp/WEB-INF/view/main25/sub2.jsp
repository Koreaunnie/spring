<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>USD ${param.price} 이상인 제품 조회</h3>

<form>
    가격을 입력하세요.
    <input type="number" step="0.01" value="${param.price}" name="price">
    <button>조회</button>
</form>

<hr>

<c:if test="${not empty nameList}">
    <ul>
        <c:forEach items="${nameList}" var="name">
            <li>${name}</li>
        </c:forEach>
    </ul>
</c:if>
<c:if test="${empty nameList}">
    <strong>USD${param.price} 이상인 제품이 없습니다.</strong>
</c:if>
</body>
</html>
