<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>${player.name} (${player.nickName})</p>
<p>${player.email}</p>
<p>${player.married}</p>
<p>소속
<ul>
    <li>${player.teams[0]}</li>
    <li>${player.teams[1]}</li>
    <li>${player.teams[2]}</li>
</ul>
</p>
<p>점수
<ul>
    <li>${player.scores[0]}</li>
    <li>${player.scores[1]}</li>
    <li>${player.scores[2]}</li>
    <li>${player.scores[3]}</li>
</ul>
</p>
</body>
</html>
