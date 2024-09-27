<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:forEach items="${datas}" var="data">
    <div style="border: 1px solid rebeccapurple">
        <c:forEach items="${data}" var="entry">
            <div style="margin: 30px">
                <p>${entry.key}</p>
                <p>${entry.value}</p>
            </div>
        </c:forEach>
    </div>
</c:forEach>

<hr>

<c:forEach items="${players}" var="player">
    <div style="border: 1px solid forestgreen">
        <c:forEach items="${player}" var="list">
            <div style="margin: 30px">
                <p>이름 : ${list.key}</p>
                <p>포지션 : ${list.value}</p>
            </div>
        </c:forEach>
    </div>
</c:forEach>
</body>
</html>
