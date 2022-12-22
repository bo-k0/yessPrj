package com.kh.yess.mall.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.yess.common.PageVo;
import com.kh.yess.mall.service.MallAdminService;
import com.kh.yess.mall.vo.ProdVo;


@Controller
public class MallAdminController {
	
	@Autowired private MallAdminService mas;
	
	//예스몰 상품리스트 화면
	@GetMapping("list")
	public String list(Model model) {
		
		//페이징 처리
		int listCount;		//한 페이지에 보이는 글 갯수에 따라 결정되는 페이지 갯수
		int currentPage; 	//현재페이지
		int pageLimit;		//한 페이지에서 보이는 페이지 갯수
		int boardLimit;		//한 페이지에서 보이는 글 갯수
		
		int maxPage;		//맨마지막최대페이지
		int startPage;		//현재페이지에서 보이는 시작페이지 숫자
		int endPage;		//현재페이지에서 보이는 마지막페이지 숫자
		
		listCount = mas.pageSelectCount();
		
		PageVo pv = new PageVo();
		
//		String mno = 
		List<ProdVo> malllist = mas.selectlist(pv);
		
		model.addAttribute("malllist", malllist);
		model.addAttribute("pv",pv);
		
		return "mall/list";
	}
	


}
