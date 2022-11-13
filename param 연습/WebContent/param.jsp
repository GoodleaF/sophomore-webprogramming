<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form action="param_result.jsp">
아이디: <input type="text" name="id"><br><br>
주문할 메뉴를 선택하세요<br> 
김밥<input type="checkbox" name="menu" value="김밥">
떡볶이<input type="checkbox" name="menu" value="떡볶이">
순대<input type="checkbox" name="menu" value="순대"><br>
<input type ="reset" value="취소">
<input type ="submit" value="확인">
</form>
</body>
</html>