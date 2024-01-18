<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>checkout.jsp</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.104.2">
    <title>결제 페이지 </title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/checkout/">

    

    

<link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }

      .b-example-divider {
        height: 3rem;
        background-color: rgba(0, 0, 0, .1);
        border: solid rgba(0, 0, 0, .15);
        border-width: 1px 0;
        box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
      }

      .b-example-vr {
        flex-shrink: 0;
        width: 1.5rem;
        height: 100vh;
      }

      .bi {
        vertical-align: -.125em;
        fill: currentColor;
      }

      .nav-scroller {
        position: relative;
        z-index: 2;
        height: 2.75rem;
        overflow-y: hidden;
      }

      .nav-scroller .nav {
        display: flex;
        flex-wrap: nowrap;
        padding-bottom: 1rem;
        margin-top: -1px;
        overflow-x: auto;
        text-align: center;
        white-space: nowrap;
        -webkit-overflow-scrolling: touch;
      }
      
      /* 포인트 영역 */
.point_div{
	margin-top: 30px;
    margin-bottom: 50px;
}
.point_div_subject{
	font-size: 25px;
    line-height: 35px;
    font-weight: bold;
}
.point_table{
	border-color: #ddd;
    border-spacing: 0;
    border-top: 1px solid #363636;
    border-bottom: 1px solid #b6b6b6;
}
.point_table th{
	border-color: #ddd;
    vertical-align: top;
    text-align: center;
    color: #333333;
    background: #fbfbfb;
    text-indent: 0;
    padding: 12px 5px 12px 20px;
    font-size: 15px;
    line-height: 20px;
}
.point_table_td{
	border-color: #ddd;
    text-align: left;
    color: #333333;
    padding: 8px 15px;
}
.order_point_input_btn{
	vertical-align: middle;
    display: inline-block;
    border: 1px solid #aaa;
    width: 60px;
    text-align: center;
    height: 20px;
    line-height: 20px;
    color: #555;
    cursor: pointer;
    font-size: 12px;
}
      
    </style>

    
    <!-- Custom styles for this template -->
    <link href="form-validation.css" rel="stylesheet">

</head>
<body>
<div class="container">
  <main>
    <div class="py-5 text-center">
<!-- 		로고 이미지 넣기  -->
<!-- 	<img class="d-block mx-auto mb-4" src="/resources/assets/brand/bootstrap-logo.svg" alt="" width="72" height="57"> -->
	 	<img class="d-block mx-auto mb-4" src="" alt="" width="0" height="0">
      <h2>결제 페이지</h2>
      <p class="lead">예약 내용을 꼼꼼히 확인해주시고 결제를 진행해주세요</p>
    </div>

    <div class="row g-5">
      <div class="col-md-5 col-lg-4 order-md-last">
        <h4 class="d-flex justify-content-between align-items-center mb-3">
          <span class="text-primary">결제내역</span>
          <span class="badge bg-primary rounded-pill">3</span>
        </h4>
        <ul class="list-group mb-3">
          <li class="list-group-item d-flex justify-content-between lh-sm">
            <div>
              <h6 class="my-0">표준가</h6>
              <small class="text-muted">설명</small>
            </div>
            <span class="text-muted">0</span>
          </li>
          <li class="list-group-item d-flex justify-content-between lh-sm">
            <div>
              <h6 class="my-0">보험료</h6>
              <small class="text-muted">설명</small>
            </div>
            <span class="text-muted">0</span>
          </li>
          <li class="list-group-item d-flex justify-content-between lh-sm">
            <div>
              <h6 class="my-0">결재내역</h6>
              <small class="text-muted">설명</small>
            </div>
            <span class="text-muted">0</span>
          </li>
          <li class="list-group-item d-flex justify-content-between bg-light">
            <div class="text-success">
              <h6 class="my-0">포인트</h6>
              <small>point</small>
            </div>
            <span class="text-success">0</span>
          </li>
          <li class="list-group-item d-flex justify-content-between">
            <span>총 결제내역</span>
            <strong>0</strong>
          </li>
        </ul>

<!--         <form class="card p-2"> -->
<!--           <div class="input-group"> -->
<!--             <input type="text" class="form-control" placeholder="Promo code"> -->
<!--             <button type="submit" class="btn btn-secondary">Redeem</button> -->
<!--           </div> -->
<!--         </form> -->
      </div>
      <div class="col-md-7 col-lg-8">
        <h4 class="mb-3">주소 입력</h4>
        <form class="needs-validation" novalidate>
          <div class="row g-3">
            <div class="col-sm-12">
              <label for="name" class="form-label">이름</label>
              <input type="text" class="form-control" id="name" placeholder="" value="" required>
              <div class="invalid-feedback">
                이름을 입력해주세요.
              </div>
            </div>


            <div class="col-12">
              <label for="email" class="form-label">이메일<span class="text-muted">(Optional)</span></label>
              <input type="email" class="form-control" id="email" placeholder="you@example.com">
              <div class="invalid-feedback">
                이메일을 입력해주세요.
              </div>
            </div>

            <div class="col-12">
              <label for="address" class="form-label">주소</label>
              <input type="text" class="form-control" id="address" placeholder="1234 Main St" required>
              <div class="invalid-feedback">
                주소를 입력해주세요
              </div>
            </div>

            <div class="col-12">
              <label for="address2" class="form-label">주소 2 <span class="text-muted">(Optional)</span>
              </label>
              <input type="text" class="form-control" id="address2" placeholder="Apartment or suite"><br>
            </div>

		<div class="col-md-8 col-lg-2">
          <h4 class="mb-3">Payment</h4>
          </div>

          <div class="my-3">
            <div class="form-check">
              <input id="credit" name="paymentMethod" type="radio" class="form-check-input" checked required>
              <label class="form-check-label" for="credit">신용 및 체크카드 결제</label>
            </div>
            <div class="form-check">
              <input id="kakaopay" name="paymentMethod" type="radio" class="form-check-input" required>
              <label class="form-check-label" for="debit">카카오페이</label>
            </div>
<!--             <div class="form-check"> -->
<!--               <input id="paypal" name="paymentMethod" type="radio" class="form-check-input" required> -->
<!--               <label class="form-check-label" for="paypal">네이버페이</label> -->
<!--             </div> -->
<!--           </div> -->

          <div class="row gy-3">
            <div class="col-md-6">
              <label for="cc-name" class="form-label">Name on card</label>
              <input type="text" class="form-control" id="cc-name" placeholder="" required>
              <small class="text-muted">카드의 풀네임을 적어주세요</small>
              <div class="invalid-feedback">
                카드 이름을 적어주세요
              </div>
            </div>

            <div class="col-md-6">
              <label for="cc-number" class="form-label">Credit card number</label>
              <input type="text" class="form-control" id="cc-number" placeholder="" required>
              <div class="invalid-feedback">
                카드 번호를 적어주세요
              </div>
            </div>

            <div class="col-md-3">
              <label for="cc-expiration" class="form-label">만료일</label>
              <input type="text" class="form-control" id="cc-expiration" placeholder="" required>
              <div class="invalid-feedback">
                만료 기간을 적어주세요
              </div>
            </div>

            <div class="col-md-3">
              <label for="cc-cvv" class="form-label">CVV</label>
              <input type="text" class="form-control" id="cc-cvv" placeholder="" required>
              <div class="invalid-feedback">
                카드 뒷면의 CVV 를 적어주세요.
              </div>
            </div>
          </div><br>
          
          <div class="point_div">
		<div class="point_div_subject">포인트 사용</div>
		<table class="point_table">
			<colgroup>
				<col width="25%">
				<col width="*">
			</colgroup>
			<tbody>
				<tr>
					<th>포인트 사용</th>
					<td>
						${memberInfo.point} | <input class="order_point_input" value="0">원 
						<a class="order_point_input_btn order_point_input_btn_N" data-state="N">모두사용</a>
						<a class="order_point_input_btn order_point_input_btn_Y" data-state="Y" style="display: none;">사용취소</a>
						
					</td>
				</tr>
			</tbody>
		</table>
	</div>
          
       	<div class="ex_txt"><p>결제수단 등록은 ‘마이페이지 &gt; 내 정보 관리 &gt; 결제수단관리’에서 가능합니다.</p><br>
          <p class="title_295">이용 약관에 동의해 주세요</p>
       	</div>
          
          	<div class="sub_cont">
          		<div class="inner">
          			<div class="agree_chk_wrap">
          				<span class="chk_box totol_chk">
          					<input type="checkbox" id="totalChk" name="payTotal" readonly="">
          					<label for="totalChk">모든 필수/선택 약관을 확인하고 전체 동의합니다.
          					</label>
          				</span>
          				<ul class="agree_list">
          				<li>
          				<span class="chk_box">
          				<input type="checkbox" id="agree01" name="0" readonly="">
          				<label for="agree01">고유식별정보 수집 및 이용 동의(필수)</label>
          				</span>
          				<span class="view">
          				<a id="agree01" name="0">보기</a>
          				</span></li>
          				<li>
          				<span class="chk_box">
          				<input type="checkbox" id="agree02" name="1" readonly="">
          				<label for="agree02">대여자격 확인 동의(필수)
          				</label></span><span class="view">
          				<a id="agree02" name="1">보기</a>
          				</span></li><li><span class="chk_box">
          				<input type="checkbox" id="agree03" name="2" readonly="">
          				<label for="agree03">개인정보 수집 및 이용 동의(필수)</label>
          				</span><span class="view"><a id="agree03" name="2">보기</a>
          				</span>
          				</li>
          				<li>
          				<span class="chk_box">
          				<input type="checkbox" id="agree04" name="3" readonly="">
          				<label for="agree04">개인정보 제3자 제공 동의(필수)</label>
          				</span><span class="view">
          				<a id="agree04" name="3">보기</a>
          				</span>
          				</li>
          				<li>
          				<span class="chk_box">
          				<input type="checkbox" id="agree05" name="4" readonly="">
          				<label for="agree05">고유식별정보 제3자 제공에 관한 동의(필수)</label>
          				</span>
          				<span class="view">
          				<a id="agree05" name="4">보기</a>
          				</span>
          				</li>
          				<li>
          				<span class="chk_box">
          				<input type="checkbox" id="agree06" name="5" readonly="">
          				<label for="agree06">자동차 표준 대여약관(필수)</label>
          				</span>
          				<span class="view">
          				<a id="agree06" name="5">보기</a>
          				</span>
          				</li>
          				<li>
          				<span class="chk_box">
          				<input type="checkbox" id="agree07" name="6" readonly="">
          				<label for="agree07">취소 및 위약금 규정 동의(필수)</label>
          				</span>
          				<span class="view">
          				<a id="agree07" name="6">보기</a>
          				</span>
          				</li>
          				<li>
          				<span class="chk_box">
          				<input type="checkbox" id="agree08" name="7" readonly="">
          				<label for="agree08">전자금융거래 이용약관(필수)</label>
          				</span>
          				<span class="view">
          				<a id="agree08" name="7">보기</a>
          				</span>
          				</li>
          				</ul>
          			</div>
          			</div>
          			<div class="ex_txt"><p>위 내용을 확인했으며 결제에 동의합니다</p></div>
          		</div>
          	</div>
          
          

          <hr class="my-4">

          <button class="w-100 btn btn-primary btn-lg" type="submit">결제 하기</button>
        </form>
      </div>
    </div>
  </main>

  <footer class="my-5 pt-5 text-muted text-center text-small">
    <p class="mb-1">&copy; 20240113 Company Name</p>
    <ul class="list-inline">
      <li class="list-inline-item"><a href="#">Privacy</a></li>
      <li class="list-inline-item"><a href="#">Terms</a></li>
      <li class="list-inline-item"><a href="#">Support</a></li>
    </ul>
  </footer>
</div>


    <script src="../assets/dist/js/bootstrap.bundle.min.js"></script>

      <script src="form-validation.js"></script>
      
      <script>
      /* 포인트 입력 */
    //0 이상 & 최대 포인트 수 이하
    $(".order_point_input_btn").on("click", function(){

	const maxPoint = parseInt('${memberInfo.point}');	
	
	let state = $(this).data("state");	
	
	if(state == 'N'){
		console.log("n동작");
		/* 모두사용 */
		//값 변경
		$(".order_point_input").val(maxPoint);
		//글 변경
		$(".order_point_input_btn_Y").css("display", "inline-block");
		$(".order_point_input_btn_N").css("display", "none");
	} else if(state == 'Y'){
		console.log("y동작");
		/* 취소 */
		//값 변경
		$(".order_point_input").val(0);
		//글 변경
		$(".order_point_input_btn_Y").css("display", "none");
		$(".order_point_input_btn_N").css("display", "inline-block");		
	}		
	
	});
      </script>
</body>
</html>