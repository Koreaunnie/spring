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
        <th>이름</th>
        <th>계약명</th>
        <th>주소</th>
    </tr>
    </thead>

    <tbody>
    <c:forEach items="${customerList}" var="customer">
        <tr>
            <td>${customer.name}</td>
            <td>${customer.contactName}</td>
            <td>${customer.address}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>

</body>
</html>
