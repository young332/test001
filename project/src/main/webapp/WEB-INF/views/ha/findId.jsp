<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>findId</title>
</head>
<body>
	<div class="text-center">
		<h1 class="h4 text-gray-900 mb-2">아이디 찾기</h1>
		<p class="mb-4">의 가입된 정보를 입력해주세요.</p>
	</div>
	<form class="user" action="/member/findId" method="POST">
		<div class="form-group">
			<input type="text" class="form-control form-control-user"
				id="memberEmail" aria-describedby="emailHelp" name="memberEmail"
				placeholder="아이디를 입력해주세요">
		</div>
		<button type="submit" class="btn btn-primary btn-user btn-block">
			아이디 찾기</button>
	</form>
	<hr>

	<a href="/login/login" class="btn btn-facebook btn-user btn-block">
		로그인 </a>
	<hr>
	<div class="text-center">
		<a class="small" href="/board/list">메인페이지</a>
	</div>
</body>
</html>