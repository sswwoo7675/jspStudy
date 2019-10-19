<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
	<title>Taste Cookie</title>
</head>
<body>
	<h1>Example Cookie</h1>
<%
	Cookie[] cookies = request.getCookies();
	if(cookies!=null){
		for(int i = 0; i<cookies.length;i++){
			if(cookies[i].getName().equals("myCookie")){
%>
	Cookie Name : <%=cookies[i].getName()%><br/>
	Cookie Value : <%=cookies[i].getValue()%><br/>
<%
			}
		}
	}
%>
</body>
</html>