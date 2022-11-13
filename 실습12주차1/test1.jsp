<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<c:set var="name" value="홍길동"/>
선언하고 이름 출력 : <c:out value="${name}"/><br>
<c:set var="name" value="철수"/>
변경하고 이름 출력 : <c:out value="${name}"/><br>
<c:remove var="name"/>
삭제하고 이름 출력 : <c:out value="${name}" default="이름 없음"/><br>
</body>
</html>