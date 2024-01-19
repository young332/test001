<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RentCar-포인트</title>
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
						포인트
					</h3>
					<div class="jumbotron card card-block">
						<p>
							내 포인트
						</p>
						<h2>
							300,000 P
						</h2>
					</div>
					<div class="btn-group" role="group">
						<button type="button" class="btn btn-outline-dark">전체</button>
						<button type="button" class="btn btn-outline-dark">적립</button>
						<button type="button" class="btn btn-outline-dark">사용</button>
						<button type="button" class="btn btn-outline-dark">소멸</button>
					</div>
					<table class="table">
						<thead>
							<tr>
								<th>
									
								</th>
								<th>
									날짜
								</th>
								<th>
									포인트
								</th>
								<th>
									상태
								</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>
									1
								</td>
								<td>
									2024-01-01
								</td>
								<td>
									300,000 P
								</td>
								<td>
									회원가입적립
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