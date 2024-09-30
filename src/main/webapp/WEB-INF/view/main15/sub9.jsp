<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>sub9 contents</h1>
<p>${some1}</p>
<p>${param.price}</p>

<%-- 포함되는(sub10) jsp에 값을 전달하는 방법 --%>
<%-- 1. request parameter 이용 --%>
<%-- 2. request(model) attribute 이용 --%>

<%-- 1. request parameter 이용 --%>
<c:import url="/WEB-INF/view/main15/sub10.jsp?name=kim&age=55"/> <%-- 비추천 --%>

<c:import url="/WEB-INF/view/main15/sub10.jsp"> <%-- 추천 --%>
    <c:param name="name" value="홍길동"/>
    <c:param name="age" value="55"/>
</c:import>
</body>
</html>
