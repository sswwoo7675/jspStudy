<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Post Servlet 방식</h1>
	<form method="post" action="postServlet">
		id : <input name="id"><br/>
		pwd : <input type="password" name="pwd"><br/>
		email : <input name="email"><br/>
		<input type="submit" value="가입">
	</form>
</body>
</html>