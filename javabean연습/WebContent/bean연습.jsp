<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="mybean" class="javabean연습.mybean" scope="page"/>
<jsp:setProperty property="username" name="mybean" value="OKJsp"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<jsp:getProperty property="username" name="mybean"/><br><br>
<%
mybean.setUsername("OKPass");
%>
<%= mybean.getUsername() %>
</body>
</html>