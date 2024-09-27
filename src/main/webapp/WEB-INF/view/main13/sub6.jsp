<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>${products[0]}</p>
<p>${products[1]}</p>
<p>${products[2]}</p>

<hr>

<c:forEach begin="0" end="2" var="i">
    <p>${products[i]}</p>
</c:forEach>

<hr>

<c:forEach begin="0" end="${products.size() -1}" var="i"> <%-- 가능하지만 추천 X --%>
    <p>${products[i]}</p>
</c:forEach>

<hr>

<%-- items : 반복한 attribute --%>
<%-- var : 각 아이템이 들어갈 attribute 명--%>
<c:forEach items="${products}" var="prdt">
    <p>${prdt}</p>
</c:forEach>

<hr>

<c:forEach items="${players}" var="player">
    <p>${player}</p>
</c:forEach>


<ul>
    <c:forEach items="${cityList}" var="city">
        <li>${city}</li>
    </c:forEach>
</ul>


</body>
</html>
