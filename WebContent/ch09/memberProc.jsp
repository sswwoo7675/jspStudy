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
                                    <b><jsp:getProperty property="name" name="regBean"/>회원님이 작성하신 내용입니다. 확인해 주세요.</b>
                                </font>
                            </td>
                        </tr>
                        <tr>
                            <td width=24%>아이디</td>
                            <td width=41%><jsp:getProperty property="id" name="regBean"/></td>
                        </tr>
                        <tr>
                        	<td>패스워드</td>
                        	<td><jsp:getProperty property="pwd" name="regBean"/></td>
                        </tr>
                        <tr>
                            <td>이름</td>
                        	<td><jsp:getProperty property="name" name="regBean"/></td>
                        </tr>
                        <tr>
                        	<td>생년월일</td>
                        	<td><jsp:getProperty property="birthday" name="regBean"/></td>
                        </tr>
                        <tr>
                        	<td>이메일</td>
                        	<td><jsp:getProperty property="email" name="regBean"/></td>
                        </tr>
                        <tr>
                        	<td colspan="2" align="center">
                        		<input type="submit" value="확인완료">&nbsp;
                        		<input type="button" value="다시쓰기" onClick="history.back()">
                        	</td>
                        </tr>
                    </form>
                </table>
            </td>
        </tr>
    </table>
</body>
</html>