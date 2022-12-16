<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 버튼 누를 시</title>
</head>
<body>
<% 
request.setCharacterEncoding("utf-8");
String useid=request.getParameter("id");
String password=request.getParameter("password");
if(useid.equals("관리자")&&password.equals("1234")){
	response.sendRedirect("special_homepage.jsp");
}
else if(useid.equals("사용자")&&password.equals("1234")){
	response.sendRedirect("login_success.jsp");
}
else{
	response.sendRedirect("login_failed.jsp");
}
%>
</body>
</html>