<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
	<title>Cook Cookie</title>
</head>
<%
	String cookieNmae = "myCookie";
	Cookie cookie = new Cookie(cookieNmae, "Apple");
	cookie.setMaxAge(60);
	cookie.setValue("Melone");
	response.addCookie(cookie);
%>
<body>
	<h1>Example Cookie</h1>
	쿠키를 만듭니다.<br/>
	쿠키 내용은 <a href="tasteCookie.jsp">여기로</a>!!!
</body>
</html>