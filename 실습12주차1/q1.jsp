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
c:if 커스텀 액션 사용<br>
<c:set var="msg" value="webp"/>
msg : ${msg}<br>
<c:if test="${msg=='webp'}" var="re">
test result = ${re}
</c:if>
<br><br>

c:choose 커스텀 액션 사용<br>
<c:set var="data" value="사원"/>
value = ${data}<br>
<c:choose>
	<c:when test="${data eq '사장'}">
	사장입니다.
	</c:when>
	<c:otherwise>
	누구도 아닙니다.
	</c:otherwise>
</c:choose>
<br><br>

c:forEach 커스텀 액션 사용<br>
<table>
<tr>
<td><b>value</b></td>
<td><b>square</b></td>
</tr>
<c:forEach var="x" begin="0" end="10" step="2">
<tr>
<td><center><c:out value="${x}"/></center></td>
<td><center><c:out value="${x*x}"/></center></td>
</tr>
</c:forEach>
</table>
<br><br>

c:import 커스텀 액션 사용<br><br>
<c:import url="test1.jsp">
</c:import>
<br><br>
</body>
</html>