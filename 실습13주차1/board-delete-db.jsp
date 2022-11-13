<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<%
	Connection conn = null;
	int id = Integer.parseInt(request.getParameter("id"));
	Class.forName("com.mysql.jdbc.Driver");
	String jdbcurl = "jdbc:mysql://localhost:3306/wptest?serverTimezone=UTC";
	ResultSet rs = null;
	String deldata = "DROP TABLE kjytable WHERE id ='id'";
	PreparedStatement pstmt = conn.prepareStatement(deldata);
	pstmt.execute();
	pstmt.close();
	conn.close();
%>
<center>
<h2>게시글이 삭제되었습니다.</h2>
<img src="image\green_tree.gif"><a href="board-list.jsp">게시글 목록 보기</a><br>
</center>
</body>
</html>