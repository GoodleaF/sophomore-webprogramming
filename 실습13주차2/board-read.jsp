<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<jsp:useBean id="dbean" class="dbean.dbean" scope="page"/>
<jsp:setProperty property="str" name="dbean" value="OKJSP"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	try{
		Class.forName("com.mysql.jdbc.Driver");
		String jdbcurl = "jdbc:mysql://localhost:3306/wptest?serverTimezone=UTC";
		conn = DriverManager.getConnection(jdbcurl, "root", "0000");
		stmt = conn.createStatement();
		String sql = "select * from kjytable where id =" + rs.getString("id");
		rs = stmt.executeQuery(sql);
		if(rs.next()){
			String name =rs.getString(1);
			String e_mail = rs.getString(2);
			String title = rs.getString(3);
			String content = rs.getString(4);
			String password = rs.getString(5);
%>
<center><h2>게시글 내용</h2><br>
<table>
<tr>
<td><img src="image\ball.gif"></td><td align="center">글 쓴 이 :</td>
<td><%=name %></td></tr>
<tr>
<td><img src="image\ball.gif"></td><td align="center">메일주소 :</td>
<td><%=e_mail %></td></tr>
<tr>
<td><img src="image\ball.gif"></td><td align="center">글 제 목:</td>
<td><%=title %></td></tr>
<tr>
<td><img src="image\ball.gif"></td><td align="center">글 내 용 :</td>
<td><%=content %></td></tr>
<%
	rs.close();
	stmt.close();
	conn.close();
			}
		}catch(SQLException e){
			out.println("DB 연동 오류입니다.:"+e.getMessage());
		}
%>
</table>

<br><br>
<img src="image\green_tree.gif"><a href="board-modify.jsp?id=<%out.print(rs.getString("id"));%>">게시글 수정</a>
<img src="image\green_tree.gif"><a href="board-delete-db.jsp?id=<%out.print(rs.getString("id"));%>">게시글 삭제</a>
<img src="image\green_tree.gif"><a href="board-list.jsp">게시글 목록 보기</a><br>
</center>
</body>
</html>