<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>표현언어의 사용예제2</title>
</head>
<body>
<h3> 표현 언어의 사용예제2 - 파라미터 값 처리</h3><br>
<form action = "q3_r.jsp">
이름<input type="text" name="name" value ="${param.name}">
<input type="submit" value="확인">
</form><br>
이름은 (request.getParameter) : <%=request.getParameter("name") %>입니다
<br>
이름은 (EL) : ${param.name}입니다.
</body>
</html>