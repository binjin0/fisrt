<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
<form action="signup_sucess.jsp">
<p>이름 : <input type="text" name="name" >
<p>아이디: <input type="text" name="id">
<p>비밀번호 : <input type="text" name="password">
<p>이메일 : <input type="text" name="email" ><br />
개인정보 동의 :
<p>
<input type="radio" name="agr" value="agree" checked="checked" />동의
<input type="radio" name="agr" value="disagree" />비동의
<input type="submit" value="제출">
</form>
</body>
</html>