<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page import="java.util.*" %>
<%@ page session="true" %>
<%@ page buffer="16kb" %>
<%@ page autoFlush="true" %>
<%@ page isThreadSafe="true"%>
<%Date date = new Date(); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>trim Before</h1>
	������ ��¥�� �ð���?<p/>
	<%=date.toLocaleString()%>
</body>
</html>