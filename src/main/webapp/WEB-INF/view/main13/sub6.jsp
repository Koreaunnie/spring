<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>${product[0]}</p>
<p>${product[1]}</p>
<p>${product[2]}</p>

<hr>

<c:forEach begin="0" end="2" var="i">
    <p>${product[i]}</p>
</c:forEach>

<hr>

<c:forEach begin="0" end="${product.size() -1}" var="i"> <%-- 가능하지만 추천 X --%>
    <p>${product[i]}</p>
</c:forEach>

<hr>

<%-- items : 반복한 attribute --%>
<%-- var : 각 아이템이 들어갈 attribute 명--%>
<c:forEach items="${product}" var="prdt">
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
