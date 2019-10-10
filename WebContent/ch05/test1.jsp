<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>TEST1</h1>
	1에서 10까지 합은?<p>
	<%
		int i = 1;
		int sum = 0;
		
		while(i<=10){
			sum += i;
			
			if(i<10){%>
				<%=i + " + "%>
	<%
			} else {%>
				<%=i + " = " + sum %>
	<%
			}
			
			i++;
		}
	%>
</body>
</html>