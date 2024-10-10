<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>

    <style>
        .active {
            background: yellow;
        }
    </style>
</head>
<body>
<h3>고객 목록 (페이징)</h3>

<table>
    <thead>
    <tr>
        <th>고객아이디</th>
        <th>고객명</th>
        <th>담당자명</th>
        <th>주소</th>
        <th>도시</th>
        <th>우편번호</th>
        <th>국가</th>
    </tr>
    </thead>

    <tbody>
    <c:forEach items="${customerList}" var="customer">
        <tr>
            <td>${customer.id}</td>
            <td>${customer.customerName}</td>
            <td>${customer.contactName}</td>
            <td>${customer.address}</td>
            <td>${customer.city}</td>
            <td>${customer.postalCode}</td>
            <td>${customer.country}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<div style="margin: 10px;">
    <c:if test="${currentPageNumber > 1}">
        <c:url value="/main27/sub5" var="pageLink">
            <c:param name="page" value="1"/>
        </c:url>
        <a href="${pageLink}">&lt&lt 처음</a>
    </c:if>


    <c:if test="${not empty prevPageNumber}">
        <c:url value="/main27/sub5" var="pageLink">
            <c:param name="page" value="${prevPageNumber}"/>
        </c:url>
        <a href="${pageLink}">&lt 이전</a>
    </c:if>

    <c:forEach begin="${beginPageNumber}" end="${endPageNumber}" var="pageNumber">
        <c:url value="/main27/sub5" var="pageLink">
            <c:param name="page" value="${pageNumber}"/>
        </c:url>

        <span class="${currentPageNumber == pageNumber ? 'active' : ''}">
            <a href="${pageLink}">${pageNumber}</a>
        </span>
    </c:forEach>

    <c:if test="${not empty nextPageNumber}">
        <c:url value="/main27/sub5" var="pageLink">
            <c:param name="page" value="${nextPageNumber}"/>
        </c:url>
        <a href="${pageLink}">다음 &gt</a>
    </c:if>

    <c:if test="${currentPageNumber < lastPageNumber}">
        <c:url value="/main27/sub5" var="pageLink">
            <c:param name="page" value="${lastPageNumber}"/>
        </c:url>
        <a href="${pageLink}">맨끝 &gt&gt</a>
    </c:if>
</div>


<div style="margin: 10px;">
    <c:if test="${currentPageNumber > 1}">
        <a href="/main27/sub5?page=1">&lt&lt 처음</a>
    </c:if>

    <c:if test="${not empty prevPageNumber}">
        <a href="/main27/sub5?page=${prevPageNumber}">&lt 이전</a>
    </c:if>

    <c:forEach begin="${beginPageNumber}" end="${endPageNumber}" var="pageNumber">
        <span class="${currentPageNumber == pageNumber ? 'active' : ''}">
            <a href="/main27/sub5?page=${pageNumber}">${pageNumber}</a>
        </span>
    </c:forEach>

    <c:if test="${not empty nextPageNumber}">
        <a href="/main27/sub5?page=${nextPageNumber}">다음 &gt</a>
    </c:if>

    <c:if test="${currentPageNumber < lastPageNumber}">
        <a href="/main27/sub5?page=${lastPageNumber}">맨끝 &gt&gt</a>
    </c:if>
</div>
</body>
</html>
