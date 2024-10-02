<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/main21/sub9" method="post">
    <input type="text" name="userName" value="홍길동">
    <br>
    <input type="text" name="age" value="66">
    <br>
    <input type="checkbox" name="foodList" value="피자">

    <input type="checkbox" name="foodList" value="치킨">
    <input type="checkbox" name="foodList" value="버거">
    <br>
    <input type="date" name="startDate" value="2024.10.01">
    <br>
    <input type="datetime-local" name="endDateTime" value="2024-10-02T15:15:15">
    <br>
    <input type="checkbox" name="expired" value="true">
    유효 여부
    <br>
    <input type="number" name="score" value="3.14" step="0.01">
    <br>
    <button>전송</button>
</form>
</body>
</html>
