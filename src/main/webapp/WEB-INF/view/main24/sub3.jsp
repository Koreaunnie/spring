<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>

    <style>
        table {
            border-collapse: collapse;
            width: 100%;

        }

        tr, th, td {
            border: 1px solid #000;
        }
    </style>
</head>
<body>
<table>
    <thead>
    <tr>
        <th>아이디</th>
        <th>이름</th>
        <th>주소</th>
    </tr>
    </thead>

    <tbody>
    <c:forEach items="${employeeList}" var="employee">
        <tr>
            <td>${employee.employeeID}</td>
            <td>${employee.firstName} ${employee.lastName}</td>
            <td>${employee.birthDate}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
