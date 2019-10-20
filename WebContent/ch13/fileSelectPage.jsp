<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	public String getParam(HttpServletRequest request, String paramName) {
		if(request.getParameter(paramName)!=null){
			return request.getParameter(paramName);
		} else {
			return "";
		}
	}
%>
<%
	request.setCharacterEncoding("utf-8");
	int filecounter = 0;
	if(request.getParameter("addcnt")!=null){
		filecounter = Integer.parseInt(request.getParameter("addcnt"));
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>File Select Page</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script language="JavaScript">
	function inputValue(form1,param,form2,idx){
	    var paramValue = form1.elements[idx].value;
	    form2.elements[idx].value = paramValue;
	    return;
	}
	
	function addFile(formName){
	    if(formName.addcnt.value=""){
	        alert("입력할 파일 갯수를 입력하고 확인 버튼을 눌러주세요");
	        formName.addcnt.focus();
	        return;
	    }
	    formName.submit();
	}
	
	function elementCheck(formName){
	    paramIndex = 1;
	    for(idx = 0; idx<formName.elements.length; idx++){
	        if(formName.elements[idx].type=="file"){
	            if(formName.elements[idx].value==""){
	                var message = paramIndex + " 번째 파일정보가 누락되었습니다. \n 업로드할 파일을 선택해 주세요";
	                alert(message);
	                formName.elements[idx].focus();
	                return;
	            } 
	            paramIndex;
	        }
	    }
	    forName.action = "fileInfoView.jsp";
	    forName.submit();
	}
</script>
</head>
<body topmargin="100">
	<div align="center">
		<font color="#0000ff" size="2">
			복수개의 파일의 업로드를 위하여 파일 갯수를 입력한 후<br/>
			확인 버튼을 눌러주세요!!!<br/>
			입력이 완료되면 DONE 버튼을 눌러주세요
		</font>
	</div><br/>
	<form name="frmName1" method="post">
		<table width="75%" border="1" align="center" cellpadding="1" cellspacing="1" bordercolor="#660000" bgcolor="#FFFF99">
			<tr bgcolor="#FFCC00"></tr>
			<tr bgcolor="#FFCC00"></tr>
			<tr></tr>
		</table>
	</form>
</body>
</html>