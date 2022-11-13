<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String str1 = request.getParameter("id");
String str2 = request.getParameter("name");
String str3 = request.getParameter("class");
String str4 = request.getParameter("PN");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<c:catch var="e">
USER ID IS <%=str1 %><br>
USER NAME IS <%=str2 %><br>
CLASS NAME IS <%=str3 %><br>
PROFESSOR NAME IS <%=str4 %><br>
</c:catch>
</body>
</html>