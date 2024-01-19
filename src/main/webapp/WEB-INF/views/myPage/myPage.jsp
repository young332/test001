<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RentCar-내정보관리</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<script>
$(function() {
	$(".btn-primary").click(function() {
		if ($(".btn-primary").text() == "수정하기") {
			$("#password").prop("readonly", false);
			$("#phoneNumber").prop("readonly", false);
			$("#birthDay").prop("readonly", false);
			$("#address1").prop("readonly", false);
			$("#address2").prop("readonly", false);
			
			$(".btn-primary").text("수정완료");
		} else if ($(".btn-primary").text() == "수정완료"){
			$(".btn-primary").text("수정하기");
			$("#modiForm").submit();
		}
	});
	
	$(".btn btn-danger").click(function() {
		location.href="/myPage/deleteInfo";
	});
	
});

</script>
</head>
<body>
<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<div class="row">
				<div class="col-md-2">
				</div>
				<div class="col-md-8">
					<h3 class="page-header">
						RentCar
					</h3>
				</div>
				<div class="col-md-2">
				</div>
			</div>
			<hr>
			<div class="row">
				<div class="col-md-2">
				</div>
				<div class="col-md-2">
					<div class="container">
					  <ul class="list-group">
					    <li class="list-group-item">마이페이지</li>
					    <li class="list-group-item">
					    <a href="/myPage/reservation">예약내역</a>
					    </li>
					    <li class="list-group-item">
					    <a href="/myPage/point">포인트</a>
					    </li>
					    <li class="list-group-item">
					    <a href="/myPage/coupon">쿠폰</a>
					    </li>
					    <li class="list-group-item">
					    <a href="/myPage/myPage">내 정보 관리</a>
					    </li>
					  </ul>
					</div>
				</div>
				<div class="col-md-6">
					<h3>
						내 정보 관리
					</h3><br>
					<div class="container">
					  <p>회원 정보</p>
					  <form id="modiForm" action="/myPage/myInformation" method="post">
					    <div class="form-group">
					      <label for="username">이름</label>
					      <input type="text" class="form-control" id="username" name="username" value="홍길동" readonly>
					    </div>
					    <div class="form-group">
					      <label for="password">비밀번호</label>
					      <input type="password" class="form-control" id="password" name="password" value="1234" readonly>
					    </div>
					    <div class="form-group">
					      <label for="phoneNumber">휴대폰 번호</label>
					      <input type="text" class="form-control" id="phoneNumber" name="phoneNumber" value="010-1234-5678" readonly>
					    </div>
					    <div class="form-group">
					      <label for="birthDay">생년월일</label>
					      <input type="date" class="form-control" id="birthDay" name="birthDay" value="2000-01-01" readonly>
					    </div>
					    <div class="form-group">
					      <label for="address">주소</label>
					      <input type="text" class="form-control" id="address1" name="address1" value="울산광역시 공업탑" readonly>
					      <input type="text" class="form-control" id="address2" name="address2" placeholder="상세주소입력" readonly>
					    </div>
					  </form>
					</div>
					<hr>
					<button type="button" class="btn btn-primary">수정하기</button>
					<button type="button" class="btn btn-danger">회원탈퇴</button>
				</div>
				<div class="col-md-2">
				</div>
			</div>
		</div>
	</div>
</div>

</body>
</html>