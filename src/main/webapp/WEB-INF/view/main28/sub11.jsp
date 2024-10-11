<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:if test="${not empty message}">
    <h5 style="background-color: aqua">${message}</h5>
</c:if>

<h3>직원 조회 후 수정</h3>

<form>
    사번
    <input type="number" name="id" value="${param.id}">
    <button>조회</button>
</form>

<hr>

<c:if test="${empty employee}">
    <h5>조회 결과가 없습니다.</h5>
</c:if>

<c:if test="${not empty employee}">
    <form action="/main28/sub12" method="post">
        <div>
            <span>사번</span>
            <input type="text" name="id" readonly value="${employee.id}">
        </div>
        <div>
            <span>이름</span>
            <input type="text" name="firstName" value="${employee.firstName}">
        </div>
        <div>
            <span>성</span>
            <input type="text" name="lastName" value="${employee.lastName}">
        </div>
        <div>
            <span>생년월일</span>
            <input type="text" name="birthDate" value="${employee.birthDate}">
        </div>
        <div>
            <span>사진</span>
            <input type="text" name="photo" value="${employee.photo}">
        </div>
        <div>
            <span>메모</span>
            <textarea name="notes" cols="30" rows="10">${employee.notes}</textarea>
        </div>

        <div>
            <button>저장</button>
        </div>
    </form>
</c:if>
</body>
</html>
