<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
아이디: ${param.id}<br>
주문한 메뉴:
${paramValues.menu[0]}
${paramValues.menu[1]}
${paramValues.menu[2]}
</body>
</html>