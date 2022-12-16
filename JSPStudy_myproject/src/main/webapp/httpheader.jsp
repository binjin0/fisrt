<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요청헤더 정보</title>
</head>
<body>
<%
Enumeration<String> em = request.getHeaderNames();
while(em.hasMoreElements()){
	String name = em.nextElement();
	String val = request.getHeader(name);
	out.print(name+" : "+val+"<br />");
}
%>
</body>
</html>