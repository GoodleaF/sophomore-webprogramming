<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<h2>Session URL Rewriting Result</h2>
<%
String id = request.getParameter("id");
HttpSession session = request.getSession(true);
%>
세션ID: <%out.print(session.getId()); %><br>
I D: <%out.print(id); %>
</body>
</html>