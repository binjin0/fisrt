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
String strcnt = (String) session.getAttribute("counter");
int count=(strcnt==null)?0:Integer.valueOf(strcnt);
out.print("방문자수 : "+count);
session.setAttribute("counter",String.valueOf(++count));
//session으로 페이지를 설정하면 chrome에서 페이지 방문횟수와 edge에서의 페이지 방문횟수가 연동되지 않아 각각 늘어난다.
//따라서 seesion은 application보다 작은 개념의 페이지이다.
%>
</body>
</html>