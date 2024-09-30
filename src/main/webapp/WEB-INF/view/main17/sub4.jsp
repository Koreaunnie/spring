<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<style>
    * {
        text-decoration: none;
        list-style: none;
    }

    ul {
        display: flex;
        justify-content: center;
    }

    li {
        width: 33%;
        text-align: center;
    }
</style>

<div>
    <ul>
        <li>
            <a href="/main17/sub1">메인화면</a>
        </li>

        <li>
            <a href="/main17/sub2">작성한 글</a>
        </li>

        <c:if test="${not empty sessionScope.userId}" var="loggedIn">
            <li>
                <a href="/main17/sub5">로그아웃</a>
            </li>
        </c:if>

        <c:if test="${not loggedIn}">
            <li>
                <a href="/main17/sub3">로그인</a>
            </li>
        </c:if>
    </ul>
</div>
