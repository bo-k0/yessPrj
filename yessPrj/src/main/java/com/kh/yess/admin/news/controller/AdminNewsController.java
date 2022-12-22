package com.kh.yess.admin.news.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.yess.news.service.NewsService;
import com.kh.yess.news.vo.NewsVo;

@Controller
@RequestMapping("admin/news")
public class AdminNewsController {
	
	@Autowired
	private NewsService ns;

	@GetMapping("main")
	public String newsMain() {
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
	
	@GetMapping("write")
	public String newsWrite() {				
		return "admin/news/write";
	}

	@PostMapping("write")
	public String newsWrite(NewsVo vo) {		
		
		vo.setAdminNo(1);
		
		int result = ns.write(vo);
		
		if(result != 1) {return "error";}
		
		int tNo = vo.getNewsTypeNo();
		String tName = "";
		
		if(tNo == 1)tName = "news";
		else if(tNo == 2)tName = "area";
		else tName = "notice";
		
		return "redirect:/admin/news/"+tName;
	}
	
	@GetMapping("edit")
//	public String newsEdit(int no, Model model) {
	public String newsEdit() {
		
//		NewsVo vo = ns.newsDetail(no);	
//		model.addAttribute("vo", vo);
		
		return "admin/news/edit";
	}
	@PostMapping("edit")
	public String newsEdit(NewsVo vo) {
		
		int result = ns.newsEdit(vo);
		if(result != 1)return "error";
		
		int tNo = vo.getNewsTypeNo();
		String tName = "";
		
		if(tNo == 1)tName = "news";
		else if(tNo == 2)tName = "area";
		else tName = "notice";
		
		return "redirect:/admin/news/"+tName;
	}
	@GetMapping("detail")
	public String newsDetail() {
		return "admin/news/detail";
	}
}
