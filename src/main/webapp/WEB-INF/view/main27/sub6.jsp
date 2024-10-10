<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>

    <style>
        * {
            text-decoration: none;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            border: 1px solid #000;
        }

        tr, th, td {
            border: 1px solid #000;
            text-align: center;
        }

        .paging {
            margin: 10px 30px;
            text-align: center;
        }

        .active {
            background: yellow;
            text-decoration-line: underline;
        }
    </style>
</head>
<body>
<h3>최신 주문 순으로 주문 목록 조회 (페이징)</h3>

<table>
    <thead>
    <tr>
        <th>주문번호</th>
        <th>고객번호</th>
        <th>직원번호</th>
        <th>주문날짜</th>
        <th>배송번호</th>
    </tr>
    </thead>

    <tbody>
    <c:forEach items="${orderList}" var="order">
        <tr>
            <td>${order.orderId}</td>
            <td>${order.customerId}</td>
            <td>${order.employeeId}</td>
            <td>${order.orderDate}</td>
            <td>${order.shipperId}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<div class="paging">
    <c:if test="${currentPageNumber > 1}">
        <c:url value="/main27/sub6" var="pageLink">
            <c:param name="page" value="1"/>
        </c:url>
        <a href="${pageLink}">&lt&lt 처음</a>
    </c:if>

    <c:if test="${not empty prevPageNumber}">
        <c:url value="/main27/sub6" var="pageLink">
            <c:param name="page" value="${prevPageNumber}"/>
        </c:url>
        <a href="${pageLink}">&lt 이전</a>
    </c:if>

    <c:forEach begin="${beginPageNumber}" end="${endPageNumber}" var="pageNumber">
        <c:url value="/main27/sub6" var="pageLink">
            <c:param name="page" value="${pageNumber}"/>
        </c:url>

        <span class="${currentPageNumber == pageNumber ? 'active' : ''}">
            <a href="${pageLink}">${pageNumber}</a>
        </span>
    </c:forEach>

    <c:if test="${not empty nextPageNumber}">
        <c:url value="/main27/sub6" var="pageLink">
            <c:param name="page" value="${nextPageNumber}"/>
        </c:url>
        <a href="${pageLink}">다음 &gt</a>
    </c:if>

    <c:if test="${currentPageNumber < lastPageNumber}">
        <c:url value="/main27/sub6" var="pageLink">
            <c:param name="page" value="${lastPageNumber}"/>
        </c:url>
        <a href="${pageLink}">맨끝 &gt&gt</a>
    </c:if>
</div>

<div class="paging">
    <c:if test="${currentPageNumber > 1}">
        <a href="/main27/sub6?page=1">&lt&lt 처음</a>
    </c:if>

    <c:if test="${not empty prevPageNumber}">
        <a href="/main27/sub6?page=${prevPageNumber}">&lt 이전</a>
    </c:if>

    <c:forEach begin="${beginPageNumber}" end="${endPageNumber}" var="pageNumber">
        <span class="${currentPageNumber == pageNumber ? 'active' : ''}">
            <a href="/main27/sub6?page=${pageNumber}">${pageNumber}</a>
        </span>
    </c:forEach>

    <c:if test="${not empty nextPageNumber}">
        <a href="/main27/sub6?page=${nextPageNumber}">다음 &gt</a>
    </c:if>

    <c:if test="${currentPageNumber < lastPageNumber}">
        <a href="/main27/sub6?page=${lastPageNumber}">맨끝 &gt&gt</a>
    </c:if>
</div>
</body>
</html>
