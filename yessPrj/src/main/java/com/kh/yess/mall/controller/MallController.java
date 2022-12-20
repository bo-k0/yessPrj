package com.kh.yess.mall.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.yess.mall.service.MallService;

@Controller
@RequestMapping("mall")
public class MallController {
	
	@Autowired private MallService ms;
	
	@GetMapping("list")
	public String list() {
		//페이징 처리
		
//		String mno = 
		
		return "mall/list";
	}
	
	
	
	
	
	
	@GetMapping("cart")
	public String cart() {
		return "mall/cart";
	}
	
	@GetMapping("order")
	public String order() {
		return "mall/order";
	}

	@GetMapping("searchlist")
	public String searchlist() {
		return "mall/searchlist";
	}
	
	@GetMapping("orderdetail")
	public String orderdatail() {
		return "mall/orderdetail";
	}
	
	@GetMapping("detail")
	public String datail() {
		return "mall/detail";
	}
	
	@GetMapping("end")
	public String end() {
		return "mall/end";
	}
	
	@GetMapping("deposit")
	public String deposit() {
		return "mall/deposit";
	}
}
