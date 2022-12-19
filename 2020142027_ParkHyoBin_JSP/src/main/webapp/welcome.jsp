<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>welcome</title>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
</head>
<body>
<%@ include file="menu.jsp" %>
<%!
String greeting="Welcome to binny Shopping Mall~!";
String author_info="작성자 : 학과, 학번, 이름";
%>
<%
Date date = new Date();
SimpleDateFormat simpleDate=new SimpleDateFormat("yyyy-mm-dd");
String strdate=simpleDate.format(date);
%>
<%
Calendar cal=Calendar.getInstance();
String am_pm;
int hour=cal.get(Calendar.HOUR);
int minute=cal.get(Calendar.MINUTE);
int second=cal.get(Calendar.SECOND);
if(hour/12==0){
	am_pm="AM";
}else{
	am_pm="PM";
	hour=hour-12;
}
String CT=hour+":"+minute+":"+second+""+am_pm;
%>

<div class="jumbotron">
  <div class="container">
    <h1 class="display-3">
      <%=greeting %></h1></div></div>
<div class="container">
  <div class="text-center">
    <h3><%=author_info %></h3></div></div>
<hr />
<div class="container">
  <div class="text-center">
    <h3>수정일 : <%=strdate %></h3>
    <h3>현재접속시간 : <%=CT %></h3>
    </div></div>
<%@ include file="footer.jsp" %>
</body>
</html>