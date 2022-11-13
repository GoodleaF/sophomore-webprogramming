<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<jsp:useBean id="dbean" class="dbean.dbean" scope="page"/>
<jsp:setProperty property="str" name="dbean" value="OKJSP"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<%
	Connection conn = null;
	Class.forName("com.mysql.jdbc.Driver");
	String jdbcurl = "jdbc:mysql://localhost:3306/wptest?serverTimezone=UTC";
	ResultSet rs = null;
	//String idnum = "SELECT COUNT(*) FROM kjytable";
	//PreparedStatement idstmt = conn.prepareStatement(idnum);//id 값을 SELECT COUNT로 찾아서 넣어준다

	String name = request.getParameter("name");
	String e_mail = request.getParameter("e-mail");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String password = request.getParameter("password");

	try{
		conn = DriverManager.getConnection(jdbcurl, "root", "0000");
		
		String sql1 = "UPDATE kjytable(id, name, e_mail, title, content, passwd) SET(COUNT(*), ?, ?, ?, ?, ?) WHERE id = COUNT(*)";
		PreparedStatement pstmt = conn.prepareStatement(sql1);
		//pstmt.setString(1, id);
		pstmt.setString(1, name);
		pstmt.setString(2, e_mail);
		pstmt.setString(3, title);
		pstmt.setString(4, content);
		pstmt.setString(5, password);
		pstmt.execute();
		
		pstmt.close();
		conn.close();
		
	}
	catch(SQLException e){
	
		out.println("DB 연동 오류입니다.:"+e.getMessage());
	}
%>
<center>
<h2>작성한 글이 등록되었습니다.</h2>
<img src="image\green_tree.gif"><a href="board-list.jsp">게시글 목록 보기</a><br>
</center>
</body>
</html>