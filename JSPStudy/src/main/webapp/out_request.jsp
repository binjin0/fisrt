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
request.setCharacterEncoding("utf-8");
String name=request.getParameter("name");
String userid=request.getParameter("id");
String password=request.getParameter("password");
%>
<p> 이름 : <%out.println(name); %>
<p> 아이디: <% out.println(userid);%>
<p> 비밀번호 : <%out.println(password); %>
<p> 오늘의 날짜 : <% out.println(java.util.Calendar.getInstance().getTime());%> 
</body>
</html>