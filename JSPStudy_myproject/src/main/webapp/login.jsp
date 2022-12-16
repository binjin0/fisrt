

<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 화면</title>
</head>
<body>
<%
Date now = new Date();
SimpleDateFormat df=new SimpleDateFormat("yyyy-mm-dd");
String date=df.format(now);
if(date.endsWith("25")){
	response.sendRedirect("undercheck.jsp");
	return;
}

%>
<h2>로그인</h2>
<form action="login_process.jsp" method="post">
<p>아이디 : <input type="text" name="id" placehoder="아이디">
<p>비밀번호 : <input type="text" name="password" placehoder="비밀번호">
<p><input type="submit" value="로그인">
</form>
<form action="signup.jsp" method="post">
<p><input type="submit" value="회원가입">
</form>
<a href="httpheader.jsp">요청헤더보기</a>
</body>
</html>