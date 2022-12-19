<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<meta charset="UTF-8">
<title>addProduct</title>
</head>
<body>
<jsp:include page="menu.jsp" />
<div class="jumbotron">
  <div class="container">
    <h1 class="display-3">상품등록</h1></div></div>
<div class="contianer">
  <form name="newProduct" action="./processAddProduct.jsp" class="form-horizontal" method="post" 
  enctype="multipart/form-data">
  
    <div class="form-group row">
      <label class="col-sm-2">상품코드</label>
      <div class="col-sm-3">
        <input type="text" id="productId" name="productId" class="form-control"></div></div>
     
     <div class="form-group row">
      <label class="col-sm-2">상품명</label>
      <div class="col-sm-3">
        <input type="text" id="name" name="name" class="form-control"></div></div>    
     
       
      <div class="form-group row">
      <label class="col-sm-2">가격</label>
      <div class="col-sm-3">
        <input type="text" id="unitPrice" name="unitPrice" class="form-control"></div></div>
     
     <div class="form-group row">
      <label class="col-sm-2">분류</label>
      <div class="col-sm-3">
        <input type="radio"  name="category" value="Necklace">목걸이
        <input type="radio"  name="category" value="Earring">귀걸이
        <input type="radio"  name="category" value="Ring">반지
        </div></div>
            
        
       <div class="form-group row">
      <label class="col-sm-2">상세정보</label>
      <div class="col-sm-3">
        <textarea name="description" cols="50" rows="2" class="form-control"></textarea>
        </div></div>       
       
       <div class="form-group row">
      <label class="col-sm-2">재고수</label>
      <div class="col-sm-3">
        <input type="text"name="unitsInStock" class="form-control"></div></div>    
        
      <div class="form-group row">
      <label class="col-sm-2">소재</label>
      <div class="col-sm-3">
        <input type="radio"  name="Material" value="14K">14K
        <input type="radio"  name="Material" value="18K">18K
        <input type="radio"  name="Material" value="silver925">실버925
        </div></div>
      <div class="form-group row">
     <label class="col-sm-2">이미지</label>
       <div class="col-sm-5">
         <input type="file" name="productImage" class="form-control">
         </div></div>  
         
      <div class="form-group row">
      <label class="col-sm-2">평점</label>
      <div class="col-sm-3">
        <input type="text" name="grade" class="form-control"></div></div>
        
      <div class="form-group row">
        <div class="col-sm-offset-2 col-sm-10">
          <input type="submit" class="btn-btn-primary" value="등록">
          </div></div>
        <div></div>
        </form></div>
<%@ include file="footer.jsp" %>
</body>
</html>