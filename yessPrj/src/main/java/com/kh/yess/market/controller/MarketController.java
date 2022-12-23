package com.kh.yess.market.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.yess.common.PageVo;
import com.kh.yess.common.Pagination;
import com.kh.yess.market.service.MarketService;
import com.kh.yess.market.vo.MarketVo;

import lombok.extern.slf4j.Slf4j;

@RequestMapping("market")
@Controller
@Slf4j
public class MarketController {

	@Autowired
	private MarketService ms;

	@GetMapping("list")
	public String list(Model model) {
		
		String category; //= req.getParameter("category"); //검색기능에 필요해서 받아오는거1
		String keyword; //= req.getParameter("keyword"); //검색기능에 필요해서 받아오는거2
		String p; //= req.getParameter("p"); //페이징처리에 필요해서 받아오는거
		
		//페이징처리
		// PageVo 객체 만들기 (boardLimit, pageLimit, currentPage, listCount)
		int listCount = ms.listCount(); //마켓 전체 게시글 갯수 조회
		int currentPage = 1;//Integer.parseInt(p); *****원래 이거 써야함*****
		int boardLimit = 10; // 목록이 10개씩 보여지게함
		int pageLimit = 10; // 리스트 번호가 5개씩 보여짐
		PageVo pv = Pagination.getPageVo(listCount, currentPage, pageLimit, boardLimit);
			
	    //마켓 리스트 조회
	    List<MarketVo> voList = ms.list(pv);
	    
	    log.info("마켓리스트" + voList);

	    //마켓 검색 (아직 전달안했음)
//		Map<String , String> map = new HashMap<>();
//	    map.put("category", category);
//	    map.put("keyword", keyword);
		
	    model.addAttribute("pv", pv);
	    model.addAttribute("voList", voList);
		return "market/list";
		
		
		
		
	}

	@GetMapping("detail")
	public String detail() {
		return "market/detail";
	}

	@GetMapping("write")
	public String write() {
		return "market/write";
	}

	@GetMapping("edit")
	public String edit() {
		return "market/edit";
	}
}
