<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" isErrorPage="true"%>
<% 
	String message = exception.getMessage();
	String objectMessage = exception.toString();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Exception Example1</h1>
	에러 메세지 : <b><%=message%></b>
	에러 실체의 클래스명과 에러 메세지 : <b><%=objectMessage%></b><p/>
</body>
</html>