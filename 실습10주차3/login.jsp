<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<%
	String[] users = {"web", "hong", "gil"};
	String[] passwords = {"programming", "2018", "1107"};
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	String redirectUrl = "form.jsp";
	
	for(int i=0; i<users.length;i++){
		if(users[i].equals(id) && passwords[i].equals(pw)){
			session.setAttribute("userid", id);
			redirectUrl = "welcome.jsp";
		}
	}
	response.sendRedirect(redirectUrl);
%>
</body>
</html>