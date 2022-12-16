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
String[] clo=request.getParameterValues("clo");
String clost="";
if(clo!=null){
	for(int i=0; i<clo.length; i++){
		clost+=clo[i]+"";
	}
}
String reason=request.getParameter("reason");
String agr=request.getParameter("agr");

%>
<ul>
<li>선호하는 옷 : <%=clost %></li>
<li>선호하는 이유 : <%=reason %></li>
<li>동의여부 : <%=agr %></li>
</ul>


</body>
</html>