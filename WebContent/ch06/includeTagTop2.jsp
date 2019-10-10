<%@ page language="java" contentType="text/html; charset=utf-8"%>

<%
	request.setCharacterEncoding("utf-8");
	String siteName = request.getParameter("siteName");
%>
include ActionTag의 Top입니다.<p/>
<%=siteName%>