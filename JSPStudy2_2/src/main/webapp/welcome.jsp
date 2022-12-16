<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 본문 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
href="http://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
<%@ include file="menu.jsp" %>
<%
Date now = new Date();
SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd");
String strdate=df.format(now);
%>
<%
Date now1 = new Date();
String am_pm;
int hour=now1.getHours();
int minute=now1.getMinutes();
int second=now1.getSeconds();
if (hour /12==0){
	am_pm="AM";
}else {
	am_pm="PM";
	hour=hour-12;
}
String CT=hour+":"+minute+":"+second+" "+am_pm;

%>
<%! String greeting="홍's 쇼핑몰에 오신 걸 환영합니다~!";
String tagline="welcome to My Shopping Mall~";
String author_info="작성자 : 학과,학번,이름";%>
<div class="jumbotron">
  <div class="container">
    <h1 class="display-3">
      <%=greeting %>
</h1></div></div>
<div class="container">
  <div class="text-center">
    <h3>
      <%=author_info %></h3></div></div>
<div class="container">
  <div class="text-center">
    <h4>수정일 : <%= strdate %>
     </h4></div></div>
<div class="container">
<div class="text-center">
<h4>접속시간 : <%= CT%></h4></div></div>
<%@ include file="footer.jsp" %>

</body>
</html>