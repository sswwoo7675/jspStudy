<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>Comment Example1</h1>
	
	<%
		String name = "Korea";
	%>
	
	<!-- �ּ� �κ��Դϴ�. '�ҽ�����'���� ���� -->
	<%--
		�� �κ��� jsp ������������ ���̰� '�ҽ�����'�� �ص� ������ ����.
		�������� ������ �ʴ� ������.
	 --%>
	 
	 <!--<%=name %> �ּ������� ������ ���� ���-->
	 <%=name/*ǥ���Ŀ� �ּ� �κ� �Դϴ�.*/ %> Fighting!!!
</body>
</html>