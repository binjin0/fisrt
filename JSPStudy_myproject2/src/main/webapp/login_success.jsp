<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<% 
out.print("로그인에 성공하였습니다.");
out.println(java.util.Calendar.getInstance().getTime());
%>
<p><a href="./homepage.jsp">홈페이지로 이동</a>
</body>
</html>