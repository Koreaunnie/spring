<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Map 탐색하기</h1>
<c:forEach items="${people}" var="person">
    <p>${person}</p>
</c:forEach>

<c:forEach items="${people}" var="person">
    <p>${person.key} : ${person.value}</p>
</c:forEach>

<hr>

<c:forEach items="${players}" var="player">
    <div style="margin: 10px">
        <p>이름 : ${player.key}</p>
        <p>소속 : ${player.value}</p>
    </div>
</c:forEach>

<c:forEach items="${food}" var="food">
    <div style="margin: 10px">
        <p>종류 : ${food.key}</p>
        <p>상품 : ${food.value}</p>
    </div>
</c:forEach>
</body>
</html>
