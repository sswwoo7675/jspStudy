<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"
	import="java.util.*"
	session = "true"
	buffer="16kb"
	autoFlush="true"
	isThreadSafe="true"
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>Directive Example2</h1>
	<%
		Date date = new Date();
	%>
	���� ��¥�� �ð���?<p/>
	<%=date.toLocaleString()%>
</body>
</html>