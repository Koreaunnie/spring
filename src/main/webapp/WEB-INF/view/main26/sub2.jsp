<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>국가별 고객 조회</h3>
<form>
    <select name="country">
        <option value="0">전체</option>
        <c:forEach items="${countryList}" var="country">
            <option value="${country}"
                ${param.country == country ? 'selected' : ''}>
                    ${country}
            </option>
        </c:forEach>
    </select>

    <div>
        <h4>정렬 조건</h4>

        <input type="radio" name="order" value="postal" id="radio1"
        ${param.order == 'postal' ? 'checked' : ''}>
        <label for="radio1">우편번호 순</label>

        <input type="radio" name="order" value="name" id="radio2"
        ${param.order == 'name' ? 'checked' : ''}>
        <label for="radio2">고객명 순</label>

        <input type="radio" name="order" value="contact" id="radio3"
        ${param.order == 'contact' ? 'checked' : ''}>
        <label for="radio3">담당자 순</label>
    </div>

    <button>조회</button>
</form>

<hr>

<table>
    <thead>
    <tr>
        <th>국가</th>
        <th>우편번호</th>
        <th>주소</th>
        <th>고객아이디</th>
        <th>고객명</th>
        <th>담당자명</th>
    </tr>
    </thead>

    <tbody>
    <c:forEach items="${customerList}" var="customer">
        <tr>
            <td>${customer.country}</td>
            <td>${customer.postalCode}</td>
            <td>${customer.address} ${customer.city}</td>
            <td>${customer.id}</td>
            <td>${customer.customerName}</td>
            <td>${customer.contactName}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
