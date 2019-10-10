<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	session.setAttribute("idKey",id);
	session.setMaxInactiveInterval(60*5);
%>

<!DOCTYPE html>
	<h1>Session Example1</h1>
	<form method="POST" action="session1_1.jsp">
    1. 가장 좋아하는 계절은?<br/>
    <input type="radio" name="" value="">
    <input type="radio" name="" value="">
    <input type="radio" name="" value="">
    <input type="radio" name="" value="">
</form>
</html>