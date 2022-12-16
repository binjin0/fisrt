<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자로 로그인시</title>
</head>
<body>
<p>로그인에 성공했습니다.
<%
out.println("로그인 성공한 날짜"+"<br>");
out.println(java.util.Calendar.getInstance().getTime());

%>
<form action="homepage.jsp" method="post">
<p><input type="submit" value="홈페이지"> 
</form>
</body>
</html>