package com.kh.yess.news.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.yess.member.vo.MemberVo;
import com.kh.yess.news.service.NewsService;
import com.kh.yess.news.vo.NewsVo;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("admin/news")
@Slf4j
public class AdminNewsController {
	
	@Autowired
	private NewsService service;
		
	//타입 체크 메서드
	private String checkListNo(int tNo) {		
		String tName = "";
		
		if(tNo == 1)tName = "news";
		else if(tNo == 2)tName = "area";
		else tName = "notice";
		
		return tName;
	}
	
	//뉴스 메인페이지
	@GetMapping("main")
	public String newsMain(Model model) {
		
		Map<String, List<NewsVo>> bm = service.newsMainList(); 
		Map<String, List<MemberVo>> mm = service.newsMainRank();
		  
		model.addAttribute("newsList",bm.get("newsList"));
		model.addAttribute("areaList",bm.get("areaList"));
		model.addAttribute("noticeList",bm.get("noticeList"));
		model.addAttribute("rankMonthList",mm.get("rankMonthList"));
		model.addAttribute("rankAllList",mm.get("rankAllList"));
		
		return "admin/news/main";
	}
	
	@GetMapping("news")
	public String newsList() {
		return "admin/news/news";
	}
	
	@GetMapping("area")
	public String areaList() {
		return "admin/news/area";
	}
	
	@GetMapping("notice")
	public String noticeList() {
		return "admin/news/notice";
	}
	
	//뉴스 글쓰기 화면
	@GetMapping("write")
	public String newsWrite() {				
		return "admin/news/write";
	}

	//뉴스 글쓰기 처리
	@PostMapping("write")
	public String newsWrite(NewsVo vo) {		
		
		vo.setAdminNo(1);
		
		log.debug(vo.toString());
		
		int result = service.write(vo);
		
		if(result != 1) {return "error";}
		
		String tName = checkListNo(vo.getNewsTypeNo());

		
		return "redirect:/admin/news/" + tName;
	}
	
	@GetMapping("edit")
	public String newsEdit(int no, Model model) {
		
		NewsVo vo = service.newsDetail(no);	
		model.addAttribute("vo", vo);				

		return "admin/news/edit";
	}
	@PostMapping("edit")
	public String newsEdit(NewsVo vo) {
		
		int result = service.newsEdit(vo);
		if(result != 1)return "error";

		String tName = checkListNo(vo.getNewsTypeNo());
		
		return "redirect:/admin/news/"+tName;
	}
	@GetMapping("detail")
	public String newsDetail(int no, Model model) {
		
		log.debug("newsDetail no : {}", no);
		
		NewsVo vo = service.newsDetail(no);	
		model.addAttribute("vo", vo);
		
		log.debug(vo.toString());
		
		return "admin/news/detail";
	}

}
