package com.kh.yess.mall.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.yess.common.PageVo;
import com.kh.yess.mall.service.MallService;
import com.kh.yess.mall.vo.AttachmentVo;
import com.kh.yess.mall.vo.ProdVo;
import com.kh.yess.mall.vo.ReviewVo;
import com.kh.yess.member.vo.MemberVo;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("mall")
@Slf4j
public class MallController {
	
	@Autowired private MallService ms;
	
	//예스몰 상품리스트 화면
	@GetMapping("list")
	public String list(@RequestParam(defaultValue = "1")int p,//페이지 번호
						@RequestParam(required = false)String category, //검색기능 구분 
						@RequestParam(value="search", required = false)String search,//검색기능이름
						Model model) {
		
		//페이징 처리
		
		int listCount = ms.pageSelectCount();
		
		PageVo pv = new PageVo();
//		String category = Integer.toString(cate);
		
		
		//제품검색
		Map<String, String> map = new HashMap<>();
		map.put("category", category);
		map.put("search", search);
		
		//제품리스트조회
		List<ProdVo> malllist = ms.selectlist(map, pv);
				
		model.addAttribute("malllist", malllist);
		model.addAttribute("pv",pv);
		
		return "mall/list";
	}
	
	
//---------------------------------------------------------------------
	
	
	
	
//---------------------------------------------------------------------
	
	
	//제품상세조회
	@GetMapping("detail")
	public String datail(int no, Model model) {
		
		//상품정보조회
		ProdVo prod = ms.selectProd(no);
		
		//상품사진조회
		List<AttachmentVo> prodImglist = ms.selectProdImg(no);
		
		model.addAttribute("prod",prod);
		model.addAttribute("prodImglist",prodImglist);
		
		//상품리뷰조회
		ReviewVo rv = new ReviewVo();
		rv.setProdNo(no);
		List<ReviewVo> rvList = ms.selectRvlist(rv);
		
		model.addAttribute("rvList", rvList);
		log.info(rvList.toString());
		
		log.debug(prodImglist.toString());
		
		return "mall/detail";
	}
	
	
//---------------------------------------------------------------------
	

	//리뷰작성
	@GetMapping("reviewwrite")
	public String reviewwrite(int no, Model model) {
		
		model.addAttribute("no", no);
		
		return "mall/reviewwrite";
	}
	
	@PostMapping("reviewwrite")
	public String reviewwrite(int no, ReviewVo rv) {
		
		rv.setMemberNo(1); //로그인멤버넣기
		rv.setProdNo(no);
		
		int result = ms.writeRv(rv);
		System.out.println("result : " + result);
		if(result == 1) {
			return "redirect:/mall/detail?no=" + no; //나중에 그 상품페이지로 변경			
		} else {
			return "redirect:/mall/list";
		}
		
	}
	
	//리뷰상세조회
	@GetMapping("rvDetail")
	public String rvDetail(int rno, Model model, int pno) {
		
		ReviewVo rvo = ms.selectRv(rno);
		log.info(rvo.toString());
		
		ProdVo pvo = ms.selectProd(pno);
		List<AttachmentVo> prodImglist = ms.selectProdImg(pno);
		
		model.addAttribute("pvo",pvo);
		model.addAttribute("prodImglist",prodImglist);
		model.addAttribute("rvo",rvo);
		
		return "mall/rvDetail";
	}
	
	
//---------------------------------------------------------------------
	
	@GetMapping("cart")
	public String cart() {
		return "mall/cart";
	}
	
	@GetMapping("order")
	public String order() {
		return "mall/order";
	}

	
	@GetMapping("orderdetail")
	public String orderdatail() {
		return "mall/orderdetail";
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
