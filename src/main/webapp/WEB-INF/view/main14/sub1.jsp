<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>

    <style>
        table, tr, th, td {
            border: 1px solid black;
        }

        table {
            border-collapse: collapse;
            width: 100%;
            text-align: center;
        }
    </style>
</head>
<body>
<table style="border: 1px solid darkolivegreen">
    <thead>
    <tr>
        <th>제목</th>
        <th>저자</th>
        <th>출판사</th>
        <th>페이지</th>
        <th>가격</th>
    </tr>
    </thead>

    <tbody>
    <c:forEach items="${list}" var="book">
        <tr>
            <td>${book.title}</td>
            <td>${book.author}</td>
            <td>${book.publisher}</td>
            <td>${book.pages}</td>
            <td>${book.price}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<hr>

<table>
    <thead>
    <tr>
        <th>이름</th>
        <th>키</th>
        <th>몸무게</th>
        <th>생일</th>
        <th>소속</th>
        <th>포지션</th>
    </tr>
    </thead>

    <tbody>
    <c:forEach items="${members}" var="member">
        <tr>
            <td>${member.name}</td>
            <td>${member.height}</td>
            <td>${member.weight}</td>
            <td>${member.birth}</td>
            <td>${member.team}</td>
            <td>${member.position}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
