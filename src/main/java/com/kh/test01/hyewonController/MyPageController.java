package com.kh.test01.hyewonController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/myPage/*")
@Log4j
public class MyPageController {
	
	@GetMapping("/reservation")
	public void reservation() {
		log.info("reservationGet..");
	}
	
	@GetMapping("/coupon")
	public void coupon() {
		log.info("couponGet..");
	}
	
	@GetMapping("/point")
	public void point() {
		log.info("pointGet..");
	}
	
	@GetMapping("/myPage")
	public void myPage() {
		log.info("myPageGet..");
	}
	
	@PostMapping("/myInformation")
	public String modifyInfo() {
		log.info("정보수정완료");
		return "redirect:/myPage/reservation";
	}
	
	@GetMapping("/deleteInfo")
	public String deleteInfo() {
		log.info("정보삭제완료");
		return "redirect:/myPage/reservation";
	}

}
