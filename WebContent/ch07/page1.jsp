<%@ page info = "JSPStudy.co.kr" language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<%
	String pageInfo = this.getServletInfo();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>Page Example1</h1>
	현재 페이지의 info값 : <%=pageInfo%>
</body>
</html>