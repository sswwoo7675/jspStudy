<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.*, ch11.*" %>
<jsp:useBean id="regMgr" class="ch11.RegisterMgrPool" scope="page"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>JSP에서 데이터베이스 연동</</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#FFFFCC">
	<h2>Bean를 사용한 데이터베이스 연동 예제</h2><br/>
	<h3>회원정보</h3>
	<table bordercolor="#0000ff" border="1">
		<tr>
			<td><strong>ID</strong></td>
   			<td><strong>PASSWD</strong></td>
   			<td><strong>NAME</strong></td>
   			<td><strong>NUM1</strong></td>
   			<td><strong>NUM2</strong></td>
   			<td><strong>EMAIL</strong></td>
   			<td><strong>PHONE</strong></td>
   			<td><strong>ZIPCODE/ADDRESS</strong></td>
   			<td><strong>JOB</strong></td>
		</tr>
<%
	Vector<RegisterBean> vlist = regMgr.getRegisterList();
	int counter = vlist.size();
	for(int i = 0; i<vlist.size();i++) {
		RegisterBean registerBean = vlist.get(i);
%>
		<tr>
			<td><%=registerBean.getId()%></td>
			<td><%=registerBean.getPwd()%></td>
			<td><%=registerBean.getName()%></td>
			<td><%=registerBean.getNum1()%></td>
			<td><%=registerBean.getNum2()%></td>
			<td><%=registerBean.getEmail()%></td>
			<td><%=registerBean.getPhone()%></td>
			<td><%=registerBean.getZipcode()%>/<%=registerBean.getAddress()%></td>
			<td><%=registerBean.getJob()%></td>
		</tr>
<%
	}
%>
	</table>
	<br/><br/>
	total records : <%=counter %>
</body>
</html>