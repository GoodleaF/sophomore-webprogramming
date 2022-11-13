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
<center><h2>게시글 수정</h2><br>
<table>
<tr>
<td><img src="image\ball.gif"></td><td align="center">글 쓴 이 :</td>
<td><input name="name" size="20"></td></tr>
<tr>
<td><img src="image\ball.gif"></td><td align="center">메일주소 :</td>
<td><input name="e-mail" size="30"></td></tr>
<tr>
<td><img src="image\ball.gif"></td><td align="center">글 제 목:</td>
<td><input name="title" size="40"></td></tr>
<tr>
<td><img src="image\ball.gif"></td><td align="center">글 내 용 :</td>
<td><textarea name="content" cols="80" rows="6"></textarea></td></tr>
<tr>
<td><img src="image\ball.gif"></td><td align="center">패스워드 :</td>
<td><input type="password" name="password" size="10"></td></tr>
</table>

<input type="submit" value="등록하기" onClick="location.href='board-modify-db.jsp'"/>
<input type="button" value="다시쓰기" onClick="location.href='board-modify.jsp'"/><br><br>

<img src="image\green_tree.gif"><a href="board-list.jsp">취소</a><br>
</center>

</body>
</html>