<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%-- forEach : 반복 --%>
<%-- begin 보다 end가 커야함 --%>
<%-- begin의 값은 음수가 될 수 없음 --%>

<c:forEach begin="1" end="3">
    <p>반복해야하는 컨텐츠</p>
</c:forEach>

<hr>

<c:forEach begin="0" end="4">
    <p>다섯 번</p>
</c:forEach>

<hr>

<%-- var를 사용해 for문의 i 같은 효과를 낼 수 있음 --%>
<c:forEach begin="1" end="5" var="idx">
    <p>${idx} 번</p>
</c:forEach>

<c:forEach begin="11" end="15" var="idx">
    <p>${idx}</p>
</c:forEach>

<hr>

<%-- 구구단 5단 출력 --%>
<c:forEach begin="1" end="9" var="num">
    <p>5 X ${num} = ${5 * num}</p>
</c:forEach>

<%-- 구구단 응용 :
request parameter 'dan'
?dan=5 : 5단 출력
?dan=7 : 7단 출력
--%>
<c:if test="${param.dan > 1 && param.dan < 10}" var="validDan">
    <c:forEach begin="1" end="9" var="num">
        <p>${param.dan} X ${num} = ${param.dan * num}</p>
    </c:forEach>
</c:if>
<c:if test="${not validDan}">
    <p>유효한 단수를 입력하세요.</p>
</c:if>

<hr>

<%-- 구구단 응용 : forEach를 활용하여 2단 ~ 9단까지 출력--%>
<c:forEach begin="2" end="9" var="num1">
    <p>${num1}단</p>
    <c:forEach begin="1" end="9" var="num2">
        <p>${num1} X ${num2} = ${num1 * num2}</p>
    </c:forEach>
</c:forEach>

</body>
</html>
