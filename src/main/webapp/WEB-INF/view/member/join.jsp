<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- BS5 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

</head>
<body>
<h1>MEMBER JOIN</h1>
<form action="${pageContext.request.contextPath}/member/join.do" method="post" onsubmit="return false">
	<input type="text" name="email" placeholder="example@example.com" />
	<input type="text" name="pwd"  placeholder="Insert Password" />
	<input type="text" name="phone"  placeholder="0xx-xxxx-xxxx" />
	<input type="text" name="zipcode"  placeholder="우편번호를 입력하세요" />
	<input type="text" name="addr1"  placeholder="기본주소 입력" />
	<input type="text" name="addr2"  placeholder="상세주소 입력" />
	<input type="submit" value="회원가입" />
</form>

</body>
</html>