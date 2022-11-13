<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset= utf-8">
<title>Insert title here</title>
</head>
<body>
<%out.println(request.getParameter("id"));%> 님의 취미는<br>
<%
String[] sports = request.getParameterValues("sports");
if(sports != null){
	for(int i=0; i<sports.length;i++){
		%>
		<%=sports[i]%>
		<%
	}
}
%>
</body>
</html>