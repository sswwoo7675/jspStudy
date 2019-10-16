<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="regBean" class="ch09.MemberBean" scope="page" />
<jsp:setProperty name="regBean" property="*" />

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>회원가입 확인</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#996600">
    <table width="80%" align="center" border="0" cellspacing="0" cellpadding="5">
        <tr>
            <td align="center" valign="middle" bgcolor="#FFFFCC">
                <table width="90%" border="1" cellspacing="0" cellpadding="2" align="center">
                    <form name="regFrom" method="post" action="memberInsert.jsp">
                        <tr align="center" bgcolor="#996600">
                            <td colspan="3">
                                <font color="#FFFFFFF">
                                    <b>@@회원님이 작성하신 내용입니다. 확인해 주세요.</b>
                                </font>
                            </td>
                        </tr>
                        <tr></tr>
                        <tr></tr>
                        <tr></tr>
                        <tr></tr>
                        <tr></tr>
                        <tr></tr>
                    </form>
                </table>
            </td>
        </tr>
    </table>
</body>
</html>