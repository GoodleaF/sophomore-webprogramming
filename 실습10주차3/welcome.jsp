<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	if(session.getAttribute("userid") == null){
		response.sendRedirect("logout.jsp");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<h1><%= session.getAttribute("userid") %>님 <small>반갑습니다.</small></h1>
	<a href="logout.jsp">로그아웃</a>
</body>
</html>