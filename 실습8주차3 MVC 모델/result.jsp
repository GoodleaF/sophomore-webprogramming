<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-type" content="text/html"; charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1 align="center">Beer Recommendation JSP</h1>
<p>
<%
List styles = (List)request.getAttribute("styles");
Iterator it = styles.iterator();
while(it.hasNext()){
out.print("<br>try: " + it.next());
}
%>
</body>
</html>