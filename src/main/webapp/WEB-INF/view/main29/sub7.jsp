<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:if test="${not empty message}">
    <h5 style="background-color: beige">${message}</h5>
</c:if>
<h3>새 책 등록</h3>
<form action="/main29/sub8" method="post">
    <div>
        isbn
        <input type="text" size="20" name="isbn">
    </div>
    <div>
        제목
        <input type="text" name="title">
    </div>
    <div>
        저자
        <input type="text" name="author">
    </div>
    <div>
        가격
        <input type="number" name="price">
    </div>
    <div>
        출판일
        <input type="date" name="published">
    </div>
    <div>
        <button>저장</button>
    </div>
</form>
</body>
</html>
