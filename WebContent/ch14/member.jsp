<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="script.js"></script>
<script type="text/javascript">
	function idCheck(id) {
	    frm = document.refFrm;
	    if(id == ""){
	        alert("아이디를 입력해 주세요.");
	        frm.id.focus();
	        return;
	    }
	    url = "idCheck.jsp?id=" + id;
	    window.open(url,"IDCheck","width=300,height=150");
	}
	
	function zipSearch(){
	    url = "zipSearch.jsp?search=n";
	    window.open(url,"ZipCodeSearch","width=500,height=300,scrollbars=yes");
	}
</script>
</head>
<body bgcolor="#FFFFCC" onLoad="regFrm.id.focus()">

</body>
</html>