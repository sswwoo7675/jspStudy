<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"
	isErrorPage = "true"    
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>Error Page</h1>
	������ ���� ���ܰ� �߻��Ͽ����ϴ�.<p/>
	<%=exception.getMessage()%>
</body>
</html>