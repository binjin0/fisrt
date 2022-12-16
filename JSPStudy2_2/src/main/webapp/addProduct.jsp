<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>상품등록</title>
</head>
<body>
<jsp:include page="menu.jsp" />
<!-- jumbotron : 어떤 특정 콘텐츠나 정보를 두드러지게 하기 위한 큰 박스 -->
<div class="jumbotron">

<div class="container">
<h1 class="display-3">상품등록</h1>
</div>
</div>
<div class="container">
<!-- horizontal : 수평폼 -->
<form name="newProduct" action="./processAddProduct.jsp" class="form-horizontal" method="post">
<div class="form-group row">
<label class="col-sm-2">상품코드</label>
<div class="col-sm-3">
<input type="text" name="productId" class="form-control">
</div></div>
<div class="form-group row">
<label class="col-sm-2">상품명</label>
<div class="col-sm-3">
<input type="text" name="name" class="form-control"></div></div>
<div class="form-group row">
<label class="col-sm-2">가격</label>
<div class="col-sm-3">
<input type="text" name="uniPrace" class="form-control"></div></div>
<div class="form-group row">
<label class="col-sm-2">상세정보</label>
<div class="col-sm-3">
<input type="text" name="discription" class="form-control"></div></div>
<div class="form-group row">
<label class="col-sm-2">제조사</label>
<div class="col-sm-3">
<input type="text" name="manufacture" class="form-control"></div></div>
<div class="form-group row">
<label class="col-sm-2">분류</label>
<div class="col-sm-3">
<input type="text" name="category" class="form-control"></div></div>
<div class="form-group row">
<label class="col-sm-2">재고수</label>
<div class="col-sm-3">
<input type="text" name="unitlnStock" class="form-control"></div></div>
<div class="form-group row">
<label class="col-sm-2">상태</label>
<div class="col-sm-3">
<input type="radio" name="condition" value="NewProduct" />신규제품
<input type="radio" name="condition" value="OldProduct" />중고제품
<input type="radio" name="condition" value="Re_product" />재생제품
</div></div>
<div class="form-group row">
<div class="col-sm-3">
<input type="submit" class="btn btn-primary" value="등록" />
</div>
</div>
</form></div>

</body>
</html>