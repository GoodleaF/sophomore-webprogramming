<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>EL Test</title>
</head>
<body>
<%
pageContext.setAttribute("spr","봄비");
request.setAttribute("sum","여름장마");
session.setAttribute("aut", "가을바람");
application.setAttribute("win","겨울눈");
%>
<h4>각 객체에 setAttribute 속성으로 값 설정 후<br>
jsp 기본 표현 방식과 el 방식의 비교 출력</h4>
<h4>jsp 기본 표현 방식</h4>
page 영역 : <%= pageContext.getAttribute("spr") %> <br>
request 영역 : <%= request.getAttribute("sum") %><br>
session 영역 : <%= session.getAttribute("aut") %><br>
application 영역 : <%= application.getAttribute("win") %><br>
<h4>EL 기본 표현 방식</h4>
page 영역 (EL) : ${pageScope.spr} <br>
request 영역 (EL) : ${requestScope.sum}<br>
session 영역 (EL) : ${sessionScope.aut}<br>
application 영역  (EL) : ${applicationScope.win}<br>
<hr><hr>
<h4>EL PageContext 내장객체 예제</h4>
Method(method) : ${pageContext.request.method}<br>
URL(requestURL) : ${pageContext.request.requestURL} <br>
<hr><hr>

<h3> 표현 언어의 사용예제2 - 파라미터 값 처리</h3>
<form action ="q3_r.jsp">
이름<input type="text" name="name" value ="${param.name}">
<input type="submit" value="확인">
</form><br>
이름은(getParameter): <%=request.getParameter("name") %>입니다<br>
이름은(param) : ${param.name} 입니다.
</body>
</html>