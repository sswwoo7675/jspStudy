<%@ page language="java" contentType="text/html; charset=utf-8" import="java.util.*"%>
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String memo = request.getParameter("memo");
	Date date = new Date();
%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<h2>메모장</h2>
	<table border="1">
		<tr>
			<td>성명</td>
			<td><%=name%></td>
		</tr>
		<tr>
			<td>메모</td>
			<td><%=memo%></td>
		</tr>
		<tr>
			<td>날짜</td>
			<td><%=date.toLocaleString()%></td>
		</tr>
	</table>
</body>
</html>