<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="ch15.BoardBean"%>
<%
	int num = Integer.parseInt(request.getParameter("num"));
	String nowPage = request.getParameter("nowPage");
	BoardBean bean = (BoardBean)session.getAttribute("bean");
	String subject = bean.getSubject();
	String name = bean.getName();
	String content = bean.getContent();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>서지우 게시판</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">

</script>
</head>
<body bgcolor="#FFFFCC">
	<div align="center">
		<br/><br/>
		<table width="600" cellpadding="3">
			<tr>
				<td bgcolor="#FF9018"  height="21" align="center">수정하기</td>
			</tr>
		</table>
	</div>
</body>
</html>