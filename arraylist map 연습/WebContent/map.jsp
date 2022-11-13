<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.*" %>
<%
HashMap<String,String> addrmap= new HashMap<String, String>();

addrmap.put("loc", "보스턴");
addrmap.put("rd", "오하이오");
addrmap.put("age", "2x");
request.setAttribute("addr",addrmap);

RequestDispatcher dispatcher = request.getRequestDispatcher("addressView.jsp");
dispatcher.forward(request, response);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>