<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>로그인</h2>
<% 
Date now =new Date();
SimpleDateFormat df = new SimpleDateFormat("yyyy-mm-dd");
String date=df.format(now);
if(date.endsWith("24")){
	response.sendRedirect("undercheck.jsp");
	return;

}
%>

<form action="login_process.jsp" method="post">
<p>아이디 : <input type="text" name="id" palcehoder="id">
<p>비밀번호 : <input type="text" name="password" palcehoder="password">
<p><input type="submit" value="로그인">
</form>
<form action = "signup.jsp">
<p><input type="submit" value="회원가입">
</form>
<a href="./httpheader.jsp">요청헤더보기</a>
</body>
</html>