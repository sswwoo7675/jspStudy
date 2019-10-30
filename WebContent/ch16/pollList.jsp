<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="ch16.*,java.util.Vector"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SEO Poll</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#FFFFCC">
	<br/>
	<h2>투표프로그램</h2>
	<hr width="600">
	<b>설문폼</b>
	<jsp:include page="pollForm.jsp"/>
	<hr width="600"/>
	<b>설문리스트</b>
	<table>
		<tr>
			<td>
				<table width="500" border="1">
					<tr>
						<td align="center">
							<b>번호</b>
						</td>
						<td><b>제목</b></td>
						<td><b>시작일~종료일</b></td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>
</html>