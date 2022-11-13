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
int sum = 0;
for(int cnt =1; cnt<=10;cnt++){
	sum+=cnt;
}
request.setAttribute("result",new Integer(sum));

RequestDispatcher dispatcher = request.getRequestDispatcher("request_result.jsp");

dispatcher.forward(request, response);
%>
</body>
</html>