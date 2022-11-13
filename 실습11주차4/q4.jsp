<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.*" %>
<%
ArrayList<HashMap<String, String>> list = new ArrayList<HashMap<String, String>>();
HashMap<String, String> person1 = new HashMap<String, String>();
person1.put("loc", "서울");
person1.put("rd", "홍길동");
person1.put("age", "24");

HashMap<String, String> person2 = new HashMap<String, String>();
person2.put("loc", "부산");
person2.put("rd", "홍길읍");
person2.put("age", "25");

list.add(person1);
list.add(person2);

request.setAttribute("rlist", list);

RequestDispatcher dispatcher = request.getRequestDispatcher("q4_r.jsp");
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