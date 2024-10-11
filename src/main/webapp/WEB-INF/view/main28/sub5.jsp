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

<h3>고객 조회</h3>
<form>
    <input value="${param.id}" type="number" placeholder="고객 번호" name="id">
    <button>조회</button>
</form>

<hr>

<c:if test="${not empty customer}">
    <div>
        <input type="text" value="${customer.id}">
    </div>
    <div>
        <input type="text" value="${customer.customerName}">
    </div>
    <div>
        <input type="text" value="${customer.contactName}">
    </div>
    <div>
        <input type="text" value="${customer.address}">
    </div>
    <div>
        <input type="text" value="${customer.city}">
    </div>
    <div>
        <input type="text" value="${customer.postalCode}">
    </div>
    <div>
        <input type="text" value="${customer.country}">
    </div>

    <div>
        <form action="/main28/sub6" method="post">
            <input type="hidden" name="id" value="${customer.id}">
            <button style="background: crimson; color: white">삭제</button>
        </form>
    </div>
</c:if>

<c:if test="${empty customer}">
    <h3>해당 번호의 고객이 조회되지 않습니다.</h3>
</c:if>
</body>
</html>
