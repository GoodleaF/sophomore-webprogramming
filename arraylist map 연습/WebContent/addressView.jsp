<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h3>. 으로 출력</h3>
${addr.loc }<br>
${addr.rd }<br>
${addr.age }<br>

<h3>[] 으로 출력</h3>
${addr["loc"] }<br>
${addr["rd"] }<br>
${addr["age"] }<br>
</body>
</html>