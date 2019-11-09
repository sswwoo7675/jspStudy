<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL</title>
</head>
<body>
	<h2>Formatting Tags1</h2>
	<fmt:setLocale value="ko_kr"/>
	<fmt:requestEncoding value="utf-8"/>
	name : ${param.name}<br/>
	<form method="post">
		name : <input name="name">
		<input type="submit">
	</form>
</body>
</html>