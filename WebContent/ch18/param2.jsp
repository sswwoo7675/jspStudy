<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Expression Language</title>
</head>
<body>
	<h2>EL의 param2</h2>
	name : ${param['name']}<br/>
	hobby : ${paramValues.hobby[0]}&nbsp;
		${paramValues.hobby[1]}&nbsp;
		${paramValues.hobby[2]}&nbsp;
		${paramValues.hobby[3]}&nbsp;
		${paramValues.hobby[4]}&nbsp;
</body>
</html>