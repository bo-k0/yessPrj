package com.kh.yess.howtoYeSS.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.yess.howtoYeSS.service.HowToYeSSService;

@RequestMapping("howtoYeSS")
@Controller
public class HowToYeSSController {

	@Autowired
	private HowToYeSSService howToYeSSService;
	
	//메인
	@GetMapping("home")
	public String howtoYeSS() {
		return "howtoYeSS/home";
	}
	
	//생활용품 선택시
	@GetMapping("list/dailyNecessity")
	public String dailyNecessity() {
		return "howtoYeSS/list/dailyNecessity";
	}
	
	//욕실/주방용품 선택시
	@GetMapping("list/bathroomKitchen")
	public String bathroomKitchen() {
		return "howtoYeSS/list/bathroomKitchen";
	}
	
	//가전제품 선택시
	@GetMapping("list/homeAppliances")
	public String homeAppliances() {
		return "howtoYeSS/list/homeAppliances";
	}
	
	//화학용품 선택시
	@GetMapping("list/chemicalSupplies")
	public String chemicalSupplies() {
		return "howtoYeSS/list/chemicalSupplies";
	}
	
	//패션/잡화 선택시
	@GetMapping("list/fashionAccessories")
	public String fashionAccessories() {
		return "howtoYeSS/list/fashionAccessories";
	}
	
	//용기/포장 선택시
	@GetMapping("list/packaging")
	public String packaging() {
		return "howtoYeSS/list/packaging";
	}
	
	//식품 선택시
	@GetMapping("list/food")
	public String food() {
		return "howtoYeSS/list/food";
	}
	
	//기타 선택시
	@GetMapping("list/etc")
	public String etc() {
		return "howtoYeSS/list/etc";
	}
	
	//detail>icepack선택시
	@GetMapping("detail/icepack")
	public String icepack() {
		return "howtoYeSS/detail/icepack";
	}
	
}//class
