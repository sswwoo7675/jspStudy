<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Expression Language</title>
</head>
<body>
<h2>EL의 Empty</h2>
name의 요청 여부 : <b>${empty param.name}</b><br/>
<a href="empty.jsp?name=rorod">name값이 있는 요청</a> || 
<a href="empty.jsp">name값이 없는 요청</a>
</body>
</html>