<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8");%>
<jsp:useBean id="mgr" class="ch14.MemberMgr"/>
<jsp:useBean id="bean" class="ch14.MemberBean"/>
<jsp:setProperty name="bean" property="*"/>

<%
	boolean result = mgr.insertMember(bean);
	String msg = "회원가입에 실패 하였습니다.";
	String location = "member.jsp";
	
	if(result){
		msg = "회원가입을 하였습니다.";
		location = "login.jsp";
	}
%>
<script>
	alert("<%=msg%>");
	location.href = "<%=location%>";
</script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>