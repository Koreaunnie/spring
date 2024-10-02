<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>/main19/sub1.jsp</h3>
<%-- action : <form action="">
            request parameter가 전달되는 위치
            생략하면 주소창에 작성된 주소를 이용 --%>
<form>
    <input type="text" name="address" value="서울">
    <br>
    <input type="text" name="nick" value="수도">
    <br>
    <%-- submit 버튼 --%>
    <%-- submit 버튼 클릭시 :
    action 속성(attribute)에 명시된 위치로
    method 속성(attribute) 방식으로
    form 요소들의 name=value 쌍이 전달됨--%>
    <button>제출</button>
</form>

<hr>

<form action="/main19/sub2">
    <%-- (input+br)*2+button{전송} --%>
    <input type="text" name="name" value="홍길동">
    <br>
    <input type="text" name="age" value="44">
    <br>
    <button>전송</button>
</form>

<hr>

<form action="/main19/sub3">
    <input type="text" name="food" value="피자">
    <br>
    <input type="text" name="email" value="yahoo">
    <br>
    <input type="text" name="city" value="인천">
    <button>전송</button>
</form>

<hr>

<form action="/main19/sub4">
    <input type="text" name="name" value="길동">
    <br>
    <%-- select[name]>option[value]{val$}*3 --%>
    <select name="food" id="">
        <option value="pizza">피자</option>
        <option value="coffee">커피</option>
        <option value="burger">버거</option>
    </select>
    <br>
    <%-- textarea[name=memo]>lorem3 --%>
    <textarea name="memo" id="" cols="30" rows="10">Lorem ipsum dolor.</textarea>
    <br>
    <button>전송</button>
</form>

<hr>

<form action="/main19/sub5">
    <%-- (input:c+lorem1+br)*3 --%>
    <input type="checkbox" name="city" id="" value="seoul">
    서울
    <br>
    <input type="checkbox" name="city" id="" value="busan">
    부산
    <br>
    <input type="checkbox" name="city" id="" value="jeju">
    제주
    <br>
    <button>전송</button>
</form>

<br>

<form action="/main19/sub6">
    <%-- 체크박스에 value 가 없는 경우 --%>
    <input type="checkbox" name="accept" id="confirm">
    동의합니다.
    <br>
    <button>전송</button>
</form>

<br>

<form action="/main19/sub7">
    <%-- (input:r+lorem1+br)*3 --%>
    <input type="radio" name="location" id="" value="gangnam">
    강남
    <br>
    <input type="radio" name="location" id="" value="mapo">
    마포
    <br>
    <input type="radio" name="location" id="" value="sungdong">
    성동
    <br>
    <button>전송</button>
</form>

<br>

<form action="/main19/sub8">
    <input type="date" name="birth">
    <br>
    <input type="datetime-local" name="now">
    <br>
    <input type="hidden" name="some" value="some value">
    <br>
    <button>전송</button>
</form>

<hr>

<%-- Controller19.sub9 메소드 작성해서
전송된 요청 파라미터들을 메소드 아규먼트로 받아서 출력하는 코드 작성 --%>
<form action="/main19/sub10">
    <%--  input[name value]+br--%>
    <%--  (input:c[name=foods]+br)*3--%>
    <%--  (input:r[name=choice]+br)*3--%>
    <%--  input:date[name=birthDate]+br--%>
    <%--  input[type=datetime-local][name=startDateTime]+br--%>
    <%--  (select[name]>option[value=some$]*3^br)--%>
    <%--  textarea[name]>lorem3^br--%>
    <%--  button{전송}--%>
    <input type="text" name="address" value="서울">
    <br>
    <input type="checkbox" name="foods" id="" value="coffee">
    커피
    <br>
    <input type="checkbox" name="foods" id="" value="water">
    물
    <br>
    <input type="checkbox" name="foods" id="" value="tea">
    차
    <br>
    <input type="radio" name="choice" id="sel1">
    1번
    <br>
    <input type="radio" name="choice" id="sel2">
    2번
    <br>
    <input type="radio" name="choice" id="sel3">
    3번
    <br>
    <input type="date" name="birthDate" id="">
    <br>
    <input type="datetime-local" name="startDateTime">
    <br>
    <select name="select" id="">
        <option value="some1">선택1</option>
        <option value="some2">선택2</option>
        <option value="some3">선택3</option>
    </select>
    <br>
    <textarea name="note" id="" cols="30" rows="10">Lorem ipsum dolor.</textarea>
    <br>
    <button>전송</button>
</form>
</body>
</html>
