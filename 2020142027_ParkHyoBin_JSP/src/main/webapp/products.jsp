<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository" %>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<meta charset="UTF-8">
<title>products</title>
</head>
<body>
<jsp:include page="menu.jsp" />

<div class="jumbotron">
  <div class="container" align="center">
    <h1 class="display-3">상품목록
    </h1></div></div>
<%
ProductRepository dao=ProductRepository.getInstance();
ArrayList<Product> listOfProducts = dao.getAllProducts();
%>
<div class="container">
  <div class="row">
    <%
    for(int i=0; i<listOfProducts.size(); i++){
    	Product product=listOfProducts.get(i);
    
    %>
    <div class="col-md-4">
    <img src="./resources/imges/<%=product.getFilename() %>" style="width:100%">
    <h3><%=product.getPname() %></h3>
    <p><%=product.getDescription() %></p>
    <p><%=product.getUnitPrice() %>원
    <p><a href="./product.jsp?id=<%=product.getProductId() %>"
            class="btn btn-secondary" role="button">
            상세정보 &raquo;</a>
      </div>
      <%
    }
      %></div></div>

</body>
</html>