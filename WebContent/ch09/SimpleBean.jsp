<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<jsp:useBean id="test" class="ch09.SimpleBean" scope="page" />
<jsp:setProperty name="test" property="message" value="빈을 쉽게 정복하자!" />
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>간단한 빈 프로그래밍</h1>
	<br/>
	Message: <jsp:getProperty property="message" name="test"/>
</body>
</html>