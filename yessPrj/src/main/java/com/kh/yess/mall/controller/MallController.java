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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.yess.common.PageVo;
import com.kh.yess.mall.service.MallService;
import com.kh.yess.mall.vo.AttachmentVo;
import com.kh.yess.mall.vo.ProdVo;

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
		
		log.info("카테고리 : " + category);
		
		model.addAttribute("malllist", malllist);
		model.addAttribute("pv",pv);
		
		return "mall/list";
	}
	
	
	//---------------------------------------------------------------------
	
	//상품 검색리스트	
	@GetMapping("searchlst")
	public String searchlist(Model model) {
		
		//페이징 처리
		int listCount;		//한 페이지에 보이는 글 갯수에 따라 결정되는 페이지 갯수
		int currentPage; 	//현재페이지
		int pageLimit;		//한 페이지에서 보이는 페이지 갯수
		int boardLimit;		//한 페이지에서 보이는 글 갯수
		
		int maxPage;		//맨마지막최대페이지
		int startPage;		//현재페이지에서 보이는 시작페이지 숫자
		int endPage;		//현재페이지에서 보이는 마지막페이지 숫자
		
		listCount = ms.pageSelectCount();
		
		PageVo pv = new PageVo();
		
//				String mno = 
		List<ProdVo> malllist = ms.selectSearchlist(pv);
		
		model.addAttribute("malllist", malllist);
		model.addAttribute("pv",pv);
				
		return "mall/searchlist";
	}
	
	
	
	//---------------------------------------------------------------------
	
	
	//제품상세조회
	@GetMapping("detail")
	public String datail(int no, Model model) {
		
		ProdVo prod = ms.selectProd(no);
		
		List<AttachmentVo> prodImglist = ms.selectProdImg(no);
		
		model.addAttribute("prod",prod);
		model.addAttribute("prodImglist",prodImglist);
		
		log.info(prodImglist.toString());
		
		return "mall/detail";
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
