<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Expression Language</title>
</head>
<body>
	<h2>EL의 header 내장객체</h2>
	호스트명 : <b>${header.host}</b><p/>
	사용브라우저 : <b>${header["user-agent"]}</b><p/>
	사용언어 : <b>${header["accept-language"]}</b><p/>
</body>
</html>