<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%-- 공통 메뉴 import --%>
<c:import url="/WEB-INF/view/main17/sub4.jsp"/>

<div>
    <h1>${sessionScope.userId}님이 작성한 글</h1>
    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi asperiores autem beatae, ducimus perspiciatis
        quae quaerat. Commodi cumque eos libero modi nisi odit porro, recusandae saepe veritatis voluptas? Aspernatur,
        suscipit!</p>
</div>
</body>
</html>
