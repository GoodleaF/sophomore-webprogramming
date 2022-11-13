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
	int i,j,num;
	
	for(i=1;i<=10;i++)
	{
		for(num=10;num>i;num--){
			out.println("&nbsp");
		}
		for(j=0;i>j;j++)
		{
			out.println("*");
		}
		out.println("<br>");
	}
	for(i=0;i<=10;i++){
		for(num=1;num<=i;num++){
			out.println("&nbsp");
		}
		for(j=10;j>i;j--){
			out.println("*");
		}
		out.println("<br>");
	}
%>
</body>
</html>