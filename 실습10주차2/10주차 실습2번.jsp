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
"문자열 : '" + str + "'<br>" +
"문자열 반환 : '" + str + "' -> '" + str.substring(1,6) + "'<br>" +
"문자열 대체 : '" + str + "' -> '" + str.replace("program","programming") + "'<br>" +
"문자열 앞뒤 공백 제거 : '" + str + "' -> '" + str.replaceAll(" ","") + "'<br>" 
%>
</body>
</html>