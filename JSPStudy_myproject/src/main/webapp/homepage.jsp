<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홈페이지 구성</title>
</head>
<body>
<h2>옷에 대한 선호도 조사></h2>
<form action="homepage_parameters.jsp" method="post">
<p>옷 종류 :
<input type="checkbox" name="clothes" value="Hoodie" checked="checked"/>후드티
<input type="checkbox" name="clothes" value="dress" />원피스
<input type="checkbox" name="clothes" value="tshirt" />티셔츠
<input type="checkbox" name="clothes" value="shirt" />셔츠
<input type="checkbox" name="clothes" value="man" />맨투맨
<p>이유 : 
<textarea name="reason" cols="40" rows="4"></textarea>
<p>수신동의 : 
<input type="radio" name="agr" value="agree" checked="checked" />동의
<input type="radio" name="agr" value="disagree">비동의
<p><input type="submit" value="제출">
</form>
</body>
</html>