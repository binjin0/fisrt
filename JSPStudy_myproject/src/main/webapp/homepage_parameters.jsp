<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선택한 것 출력</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");
String[] clo=request.getParameterValues("clothes");
String clostr="";
if(clo!=null){ 
	for(int i=0; i<clo.length; i++){
		clostr+=clo[i]+" ";
	}
}
String rea=request.getParameter("reason");
String agr=request.getParameter("agr");
%>
<ul>
<li>옷종류 : <%= clostr%></li>
<li>이유 : <%= rea %></li>
<li>수신동의 : <%=agr %></li>
</ul>
</body>
</html>