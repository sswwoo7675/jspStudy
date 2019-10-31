<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SEO Poll</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#FFFFCC">
	<div align="center">
		<br/>
		<h2>투표프로그램</h2>
		<hr width="600"/>
		<b>설문작성</b>
		<hr width="600"/>
		<form method="post" action="pollInsertProc.jsp">
			<table border="1" width="500">
				<tr>
					<td><b>질문</b></td>
					<td colspan="2">
						<input name="question" size="30">
					</td>
				</tr>
				<tr>
					<td rowspan="8"><b>항목</b></td>
<%
	for(int i=1; i<=4; i++){
		out.println("<td>" + (i * 2 - 1)
				+ ": <input name='item'></td>");
		out.println("<td>" + (i * 2)
				+ ": <input name='item'></td>");
		out.println("</tr>");
		if (i==4){
			out.println("");
		} else {
			out.println("<tr>");
		}
	}
%>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>