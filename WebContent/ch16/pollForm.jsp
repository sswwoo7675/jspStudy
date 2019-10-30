<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="ch16.*,java.util.Vector"%>
<jsp:useBean id="pMgr" class="ch16.PollMgr"/>
<%
	int num = 0;
	if(!(request.getParameter("num")==null || request.getParameter("num").equals(""))){
		num = Integer.parseInt(request.getParameter("num"));
	}
%>
<link href="style.css" rel="stylesheet" type="text/css">
<form method="post" action="pollFormProc.jsp">
</form>






<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>