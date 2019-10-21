<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="com.oreilly.servlet.MultipartRequest,
                com.oreilly.servlet.multipart.DefaultFileRenamePolicy,
                java.util.*,
                java.io.*"								   
%>

<%
	String saveFolder="C:/jsp/myapp/WebContent/ch13/filestorage/";
	String encType="euc-kr";
	int maxSize = 10*1024*1024; //10M
	
	ServletContext context = getServletContext();
	ArrayList saveFiles = new ArrayList();
	ArrayList origFile = new ArrayList();
	
	String user = "";
	String title = "";
	String content = "";
	
	try{
		MultipartRequest multi = new MultipartRequest(request,saveFolder,maxSize,encType,new DefaultFileRenamePolicy());
		
		user = multi.getParameter("user");
		title = multi.getParameter("title");
		content = multi.getParameter("content");
		
		Enumeration files = multi.getFileNames();
		while(files.hasMoreElements()){
			String name = (String)files.nextElement();
			saveFiles.add(multi.getFilesystemName(name));
			origFile.add(multi.getOriginalFileName(name));
		}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>File Info Page</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>
	<table width="75%" border="1" align="center" cellpadding="1" cellspacing="1" bordercolor="#660000" bgcolor="#FFFF99">
		<tr>
			<td width="10%" bgcolor="#FFCC00">
				<div align="right">
					<strong>user</strong>
				</div>
			</td>
			<td width="30%"><%=user%></td>
			<td width="10%" bgcolor="#FFCC00">
				<div align="right">
					<strong>title</strong>
				</div>
			</td>
			<td width="30%"><%=title%></td>
		</tr>
		<tr>
			<td width="10%" bgcolor="#FFCC00">
				<div align="right">
					<strong>content</strong>
				</div>
			</td>
			<td width="50%" colspan="3">
				<textarea cols="50" rows="5" disabled><%=content%></textarea>
			</td>
		</tr>
		<tr>
			<td colspan="4" bgcolor="#ffffff">&nbsp;</td>
		</tr>
		<tr>
			<td colspan="4"><strong>업로드 된 파일들입니다.</strong></td>
		</tr>
<%
		for(int i=0;i<saveFiles.size();i++){
%>			
		<tr bgcolor="#FFCC00">
			<td colsapn="4">
			<a href="<%="./filestorage/" + saveFiles.get(i)%>"><strong><%=origFile.get(i)%></strong></a>
			</td>
		</tr>
<%		
		}
%>
	</table>
</body>
</html>
<%
	}catch(IOException ioe){
		System.out.println(ioe);
	}catch(Exception ex){
		System.out.println(ex);
	}
%>