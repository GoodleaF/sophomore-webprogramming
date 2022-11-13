<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<h3>map 객체 값 출력</h3>
${rlist[0].loc}에 거주하는${rlist[0].rd}는 ${rlist[0].age}살 입니다.<br>
${rlist[1].loc}에 거주하는 ${rlist[1].rd}는 ${rlist[1].age}살 입니다.<br>

<h3>map 객체를 ArrayList에 넣고 값 출력</h3>
list의 모든 값 출력: ${rlist}<br>
list[0] 출력: ${rlist[0]}<br>
list[1] 출력: ${rlist[1]}<br><br>

list[0].loc 출력: ${rlist[0].loc}<br>
list[0].rd 출력: ${rlist[0].rd}<br>
list[0].age 출력: ${rlist[0].age}<br><br>

list[1].loc 출력: ${rlist[1].loc}<br>
list[1].rd 출력: ${rlist[1].rd}<br>
list[1].age 출력: ${rlist[1].age}
</body>
</html>