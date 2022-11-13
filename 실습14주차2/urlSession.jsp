<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<h2>Session URL Rewriting Test</h2>
<%
String id = request.getParameter("id");
HttpSession session = request.getSession(true);
%>
세션ID: <%out.print(session.getId()); %><br>
I D: <%out.print(id); %><br>
<a href="urlSessionResult.jsp?jsessionid=<%=response.encodeURL(session.getId())%>">Test1</a><br>
<a href="urlSessionResult.jsp">Test2</a>
</form>
</body>
</html>