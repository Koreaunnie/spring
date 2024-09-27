<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>/main13/sub2</p>
<%-- JSTL : JSP Standard Tag Library --%>
<%--
반복된 코드 실행
출력 여부
--%>

<%--
if
--%>
<C:if test="true">
    <p>출력이 될까?</p>
</C:if>
<c:if test="${param.g == '남자'}">
    <p>남자입니다.</p>
</c:if>
<c:if test="${param.g == '여자'}">
    <p>여자입니다.</p>
</c:if>

<c:if test="${param.age < 13}">
    <p>어린이용 컨텐츠</p>
</c:if>
<c:if test="${13 <= param.age && param.age < 20}">
    <p>청소년용 컨텐츠</p>
</c:if>
<c:if test="${param.age >= 20}">
    <p>성인용 컨텐츠</p>
</c:if>

<hr>

<%-- request parameter 'country'의 값에 따라 다른 요소 출력 --%>
<%--
country가 uk 이면
--%>
<c:if test="${param.country == 'uk'}">
    <p>해리 케인</p>
</c:if>
<%--
country가 us 이면
--%>
<c:if test="${param.country == 'us'}">
    <p>마이클 조던</p>
</c:if>

<%--
country가 kr 이면
--%>
<c:if test="${param.country == 'kr'}">
    <p>손흥민</p>
</c:if>

</body>
</html>
