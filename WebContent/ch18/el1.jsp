<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>
 <%
 	request.setAttribute("siteName", "JSPStudy.co.kr");
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>EL의 기본문법1</h2>
	사이트명 : <b>${siteName}</b>
</body>
</html>