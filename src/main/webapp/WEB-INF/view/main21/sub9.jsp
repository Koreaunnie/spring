<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%-- Controller 에서 ModelAttribute 의 name(value) element 를 생략했기 때문에--%>
<%--클래스명이 lowerCamelCase 로 바꾼 이름으로 결정됨--%>
<p>${myBean8.userName}</p>
<p>${myBean8.age}</p>
<c:forEach items="${myBean8.foodList}" var="food">
    <p>${food}</p>
</c:forEach>
<p>${myBean8.startDate}</p>
<p>${myBean8.endDateTime}</p>
<p>${myBean8.expired}</p>
<p>${myBean8.score}</p>
</body>
</html>
