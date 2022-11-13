<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<c:url var="url" value="B.jsp">
	<c:param name="id" value="WP"/>
	<c:param name="name" value="settlement"/>
	<c:param name="class" value="Web Programming"/>
	<c:param name="PN" value="김신우 교수님"/>
</c:url>
<c:redirect url="${url}"/>
</body>
</html>