<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
Cookie[] cookies = request.getCookies();
String id = request.getParameter("id");
String pw = request.getParameter("pw");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<%=
if(getCookieValue(cookies,"id")==id){
	
}
%>
</body>
</html>
