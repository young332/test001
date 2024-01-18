<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list.jsp</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<div class="row">
		<div class="col-md-12">
			<div class="jumbotron">
				<h2>
					학생 관리 프로그램
				</h2>
				<br>
				<p>
					<a class="btn btn-primary btn-large" href="/register">학생등록</a>
				</p>
			</div>
			<table class="table">
				<thead>
					<tr>
						<th>학번</th>
						<th>이름</th>
						<th>학년</th>
						<th>성별</th>
						<th>전공</th>
						<th>점수</th>
						<th>수정 / 삭제</th>
						
						
					</tr>
				</thead>
				<tbody>
				<c:forEach  items="${list}" var="studentVO">
					<tr>
						<td>${studentVO.sno}</td>
						<td>${studentVO.sname}</td>
						<td>${studentVO.syear}</td>
						<td>${studentVO.gender}</td>
						<td>${studentVO.major}</td>
						<td>${studentVO.score}</td>
						<td>
							<a href="/modify?sno=${studentVO.sno}">수정</a>
							<a>/</a>
							<a href="/remove?sno=${studentVO.sno}">삭제</a>
						</td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
		</div>
	</div>

</body>
</html>