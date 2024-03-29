<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ include file="/WEB-INF/view//include/link.jsp" %> --%>
<%-- <%@ include file="/WEB-INF/view//include/header.jsp" %> --%>
	
    <section class="title">
        <h1>포인트 내역 </h1>
    </section>
    <head>
    <style>
    @charset "utf-8";
section.title {
	width: 100%;
}
 
section.title h1 {
	text-align: center;
	margin: 30px 0 30px 0;
}
 
main {
	width: 90%;
	max-width: 1000px;
	margin: 0 auto;
	padding-bottom: 30px;
}
 
main h2 {
	margin-top: 30px;
	padding: 15px
}
 
.my_point {
	text-align: center;
}
 
#my_point:after {
	content: '원';
}
 
.my_point div {
	font-size: 3rem;
}
 
.my_point .point_regi {
	margin: 0 auto;
	margin-top: 20px;
	border-radius: 10px;
	border: 1px solid #999;
	width: 40%;
	min-width: 500px;
}
 
.my_point .point_regi button {
	height: 50px;
	font-size: 2rem;
	color: #28a8a8;
	background: none;
	border: none;
	width: 100%;
}
 
.my_point .point_regi .point_number_area {
	display: none;	
}
 
.my_point .point_regi .point_number_area > div {
	border-top: 1px solid #ddd;
	height: 50px;
	display: flex;
	justify-content: space-between;
	padding: 0 15px;
	align-items: center;
}
 
.my_point .point_regi .point_number_area input {
	border: none;
	height: 70%;
}
 
.my_point .point_regi .point_number_area input[type=text] {
	flex: 5;
}
 
.my_point .point_regi .point_number_area input[type=button] {
	flex: 1;
	background: #30DAD9;
	color: #fff;
}
 
main ul li {
	display: flex;
	justify-content: space-between;
	padding: 15px;
}
 
main ul li>div:last-child {
	text-align: right;
}
 
main ul li .plus {
	color: #FF7701;
}
 
main ul li .plus:before {
	content: '+';
}
 
main ul li .plus:after {
	content: '원 적립';
}
 
main ul li .used:after {
	content: '원 사용';
}
 
 
@media ( max-width : 767px) {
	main {
		width: 100%;
		max-width: 1000px;
		margin: 0 auto;
	}
	.my_point .point_regi {
		width: 95%;
		border-top: 1px solid #ddd;
		border-bottom: 1px solid #ddd;
		min-width: 0;
	}
	.my_point .point_regi .point_number_area input[type=button] {
		border-radius: 10px;
	}
}
    
    </style>
    
    
    </head>
	
	<main>
		<div class="my_point">
            <div>
                <span>보유 포인트</span>
                <span id="my_point" data-point="${point }"><fm:formatNumber value="${point }" /></span>
            </div>
            
            <div class="point_regi">
                <div>
                    <button>상품권 등록하기</button>
                </div>
				
                <div class="point_number_area">
					<div>
	                    <input type="text" class="point_number" maxlength="20" name="giftCardNum" placeholder="상품권 번호를 입력해주세요">
	                    <input type="button" value="등록">
	                </div>
                </div>
            </div>
            
		<div style="font-size: 15px; margin-top: 10px;">상품권번호 QKRTNALS</div>
		
		
        </div>
		
		<h2>포인트 이용 내역</h2><hr>
		<ul class="point_his">
			<c:forEach items="${myPoint }" var="myPoint">
				<li>
	                <div>
	                    <div>${myPoint.info }</div>
	                    <div><fm:formatDate value="${myPoint.usedDate }" pattern="yyyy.MM.dd" /> </div>
	                </div>
	
	                <div>
	                	<c:if test="${myPoint.point > 0 }">
	                		<div class="plus"><fm:formatNumber value="${myPoint.point }" pattern="###,###"/></div>
	                	</c:if>
	                	
	                	<c:if test="${myPoint.point < 0 }">
	                		<div class="used"><fm:formatNumber value="${myPoint.point }" pattern="###,###"/></div>
	                	</c:if>
	                	
	                </div>
				</li><hr>
	
			</c:forEach>
			
		</ul>
	</main>

</body>
</html>