<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <jsp:useBean id="beans" class="beans.beans" scope="page"/>
    <jsp:setProperty property="str" name="beans" value="OKJsp"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
ID : <jsp:getProperty property="str" name="beans"/><br>
<%
beans.setstr("OKPassword");
%>
Password : <%=beans.getstr() %><br>
</body>
</html>