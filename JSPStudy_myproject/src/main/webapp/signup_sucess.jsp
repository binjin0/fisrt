<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 성공</title>
</head>
<body>
<p>회원가입 완료!
<%
request.setCharacterEncoding("utf-8");
String name=request.getParameter("name");
String id=request.getParameter("id");
String password=request.getParameter("password");
String email=request.getParameter("email");
String agr=request.getParameter("agr");

%>
<ul>
<li>이름 : <%=name %></li>
<li>아이디 : <%=id %></li>
<li>비밀번호 : <%=password %></li>
<li>이메일 : <%=email %></li>
<li>정보동의 : <%=agr %></li>
<a href="login.jsp">로그인으로 돌아가기</a>
</ul>
</body>
</html>