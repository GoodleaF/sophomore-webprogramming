<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	String str = " web program ";
%>
<%=
"���ڿ� : '" + str + "'<br>" +
"���ڿ� ��ȯ : '" + str + "' -> '" + str.substring(1,6) + "'<br>" +
"���ڿ� ��ü : '" + str + "' -> '" + str.replace("program","programming") + "'<br>" +
"���ڿ� �յ� ���� ���� : '" + str + "' -> '" + str.replaceAll(" ","") + "'<br>" 
%>
</body>
</html>