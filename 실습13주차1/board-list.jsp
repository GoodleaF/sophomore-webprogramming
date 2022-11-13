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
<center>
<h1> 게시글 목록 보기 </h1>
<table border="1" align="center">
	<tr>
	<td align="center" bgcolor=gray width=10%> 글번호 </td>
	<td align="center" bgcolor=gray width=10%> 글쓴이 </td>
	<td align="center" bgcolor=gray width=40%> 글제목 </td>
	<td align="center" bgcolor=gray width=30%> 전자우편 </td>
	</tr>
	<%
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			String jdbcurl = "jdbc:mysql://localhost:3306/wptest?serverTimezone=UTC";
			conn = DriverManager.getConnection(jdbcurl, "root", "0000");
			stmt = conn.createStatement();
			String sql = "select * from kjytable";
			rs = stmt.executeQuery(sql);
		}
		catch(Exception e){
			out.println("DB 연동 오류입니다.:"+e.getMessage());
		}
		
		while(rs.next()){
		%>
			<tr>
				<td align="center"><%=rs.getString("id") %></td>
				<td align="left"><%=rs.getString("name") %></td>
				<td align="left"><a href="board-read.jsp?id=<%out.print(rs.getString("id"));%>"><%=rs.getString("title") %></a></td>
				<td align="left"><%=rs.getString("e_mail") %></td>
			</tr>
	<%
		}
	%>
	</table>
	<%
		stmt.close();
		conn.close();
	%>
	<img src="image\green_tree.gif"><a href="board-insert.jsp">게시글 쓰기</a><br>
	<img src="image\island.gif" align="bottom">
	</center>
</body>
</html>