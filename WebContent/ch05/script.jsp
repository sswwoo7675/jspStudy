<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>JSP스크립트 Example</title>
</head>
<body>
	<h1>Script Example</h1>
	<%!
		String declaration = "Declaration";
	%>
	
	<%!
		public String decMethod(){
			return declaration;
		}
	%>
	
	<%
		String scriptlet = "Scriptlet";
		String comment = "Comment";
		out.println("내장객체를 이용한 출력 : " + declaration + "<p>");
	%>
	선언문의 출력1 : <%=declaration%><p>
	선언문의 출력2 : <%=decMethod() %><p>
	스크립트릿의 출력 : <%=scriptlet %><p>
	<!-- JSP주석부분 -->
	<!-- JSP주석1 --></p>
	<%--jsp주석2 --%>
	<%
		/*
		(주석여러줄)
		*/
	%>
	<%//한줄주석스키 %>
</body>
</html>