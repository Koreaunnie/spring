<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form method="post">
    <input type="text" name="lunch" value="돈까스">
    <br>
    <button>전송</button>
</form>

<hr>

<form action="/main21/sub4" method="get">
    <%-- (input+br)*3+button{전송} --%>
    <input type="text" name="address" value="seoul">
    <br>
    <input type="text" name="age" value="33">
    <br>
    <input type="text" name="birth" value="2002-02-02">
    <br>
    <button>전송</button>
</form>

<hr>

<%-- Controller21.sub5 메소드 작성 :
 request parameter 가 객체의 property 에 반영되어 콘솔에 출력하는 코드 --%>
<form action="/main21/sub5" method="post">
    <%-- (input:r[name=select][value]+br)*3 --%>
    <input type="checkbox" name="select" id="" value="pizza">
    피자
    <br>
    <input type="checkbox" name="select" id="" value="burger">
    버거
    <br>
    <input type="checkbox" name="select" id="" value="chicken">
    치킨
    <br>
    <input type="datetime-local" name="now">
    <br>
    <textarea name="note" id="" cols="30" rows="10"></textarea>
    <br>
    <input type="text" name="id">
    <br>
    <button>전송</button>
</form>

<hr>

<form action="/main21/sub6">
    <%-- (input+br)*3+button{전송} --%>
    <input type="text" name="title" value="java">
    <br>
    <input type="text" name="author" value="shin">
    <br>
    <input type="number" name="price" value="5000">
    <br>
    <button>전송</button>
</form>

<hr>

<form action="/main21/sub7">
    <%-- (input+br)*3+button{전송} --%>
    <input type="text" name="title" value="java">
    <br>
    <input type="text" name="author" value="shin">
    <br>
    <input type="number" name="price" value="5000">
    <br>
    <button>전송</button>
</form>
</body>
</html>
