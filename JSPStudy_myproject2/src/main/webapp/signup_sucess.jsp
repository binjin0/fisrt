<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>회원가입완료!</h2>
<%
String name=request.getParameter("name");
String id=request.getParameter("id");
String password=request.getParameter("password");
String email=request.getParameter("email");
String agr=request.getParameter("agr");
%>
<ul>
<li><%= name %></li>
<li><%=id %></li>
<li><%=password %></li>
<li><%=email %></li>
<li><%=agr %></li>
</ul>
<a href="./login.jsp">로그인하기</a>
</body>
</html>