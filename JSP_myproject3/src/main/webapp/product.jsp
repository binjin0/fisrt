<%@ page import="dto.Product" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.ProductRepository" %>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>상품상세정보</title>
</head>
<body>
<jsp:include page="menu.jsp" />
<div class="jumbotron">
<div class="container">
<h1 class="display-3">상품정보</h1>
</div>
</div>
<%
String id=request.getParameter("id");
ProductRepository dao=ProductRepository.getInstance();
Product product = dao.getProductById(id);
%>

<div class="container">
<div class="row">
<div class="col-md-6">
<h3><%=product.getPname() %></h3>
<p><%=product.getDescription() %>
<!-- 빨간색 배지안에 "상품코드"글자 적히게 하는 코드 -->
<p><b>상품코드 : </b><span class="badge badge-danger">
<%=product.getProductId() %></span>
<p><b>제조자</b>:<%=product.getManufacturer() %>
<P><b>분류</b>:<%=product.getCategory() %>
<p><b>재고 수</b> : <%=product.getUnitsInStock() %>
<h4><%=product.getUnitPrice() %>원</h4>
<!-- 주소적는 곳에 #을 적는 이유는 의미없는 링크를 주어 페이징이 안되도록하는 것임.
즉 눌러도 어디로든 이동하지 않음. -->
<p><a href="#" class ="btn btn-info">상품주문 &rqpuo;</a><!-- info는 하늘색 계열 색 -->
<a href="./products.jsp" class="btn btn-secondary">상품목록 &rapuo;</a> <!-- secondary는 회색 -->
</div>
</div>
<hr>
</div>
<jsp:include page="footer.jsp" />
</body>
</html>