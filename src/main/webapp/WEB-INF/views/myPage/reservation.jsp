<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RentCar-예약내역</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
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
						예약내역
					</h3>
					<div class="jumbotron card card-block">
						<p>
							예약내역이 없습니다.
						</p>
						<p>
							<a class="btn btn-primary btn-large" href="#">예약하러 가기</a>
						</p>
					</div>
					<h3>
						이용완료 및 예약취소
					</h3>
					<table class="table">
						<thead>
							<tr>
								<th>
									
								</th>
								<th>
									날짜
								</th>
								<th>
									차종
								</th>
								<th>
									처리상태
								</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>
									1
								</td>
								<td>
									2024-01-31 ~ 2024-02-10
								</td>
								<td>
									Ray
								</td>
								<td>
									예약취소완료
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="col-md-2">
				</div>
			</div>
		</div>
	</div>
</div>

</body>
</html>