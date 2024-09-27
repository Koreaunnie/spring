<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:forEach items="${data}" var="entry">
    <p>${entry.key}</p>
    <ul>
        <c:forEach items="${entry.value}" var="item">
            <li>${item}</li>
        </c:forEach>
    </ul>
</c:forEach>

<hr>

<c:forEach items="${movies}" var="movie">
    <p>${movie.key}</p>
    <ul>
        <c:forEach items="${movie.value}" var="list">
            <li>${list}</li>
        </c:forEach>
    </ul>
</c:forEach>
</body>
</html>
