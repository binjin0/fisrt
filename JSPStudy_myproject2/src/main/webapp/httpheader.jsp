<%@page import="java.util.Enumeration"%>
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
Enumeration<String> em= request.getHeaderNames(); //리스트보다 좀더 큰 배열
while(em.hasMoreElements()){
	String name=em.nextElement();
	String val = request.getHeader(name);
	out.print(name+":"+val+"<br />");
}

%>
</body>
</html>