package com.kh.yess.news.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.yess.common.PageVo;
import com.kh.yess.common.Pagination;
import com.kh.yess.member.vo.MemberVo;
import com.kh.yess.news.service.NewsService;
import com.kh.yess.news.vo.NewsPageVo;
import com.kh.yess.news.vo.NewsVo;

import lombok.extern.slf4j.Slf4j;

@RequestMapping("news")
@Controller
@Slf4j
public class NewsController {

	@Autowired
	private NewsService service;
	
	private String checkListNo(int tNo) {		
		String tName = "";
		
		if(tNo == 1)tName = "news";
		else if(tNo == 2)tName = "area";
		else tName = "notice";
		
		return tName;
	}

	@GetMapping
	public String newsMain(Model model) {
		
		Map<String, List<NewsVo>> bm = service.newsMainList(); 
		Map<String, List<MemberVo>> mm = service.newsMainRank();
		  
		model.addAttribute("newsList",bm.get("newsList"));
		model.addAttribute("areaList",bm.get("areaList"));
		model.addAttribute("noticeList",bm.get("noticeList"));
		model.addAttribute("rankMonthList",mm.get("rankMonthList"));
		model.addAttribute("rankAllList",mm.get("rankAllList"));

		return "news/main";
	}

	@GetMapping("news")
	public String newsList(@RequestParam(defaultValue = "1")int p
			, @RequestParam(required = false)String search
			, @RequestParam(required = false, defaultValue="T")String sort
			, Model model) {
		

		int typeNo = 1;
		String deleteYn = "N";
		
		NewsPageVo npvo = new NewsPageVo();
		npvo.setP(p);
		npvo.setSort(sort);
		npvo.setSearch(search);
		npvo.setTypeNo(typeNo);	
		npvo.setDeleteYn(deleteYn);
		
		log.debug("search : " + search);
		
		//PageVo 객체 만들기
		int listCount = service.selectCnt(npvo);
		if (listCount == 0 && search != null) {
			model.addAttribute("msg", "검색결과가 없습니다.");
			return "admin/common/errorMsg";
		}		
		
		
		int currentPage = p; //현재페이지
		int pageLimit = 5; //목록에 보여 줄 페이지 수
		int boardLimit = 10; //한 페이지에 보여줄 게시글 수
		PageVo pv = Pagination.getPageVo(listCount, currentPage, pageLimit, boardLimit);
		
		log.debug("pv : "+ pv);
		
		List<NewsVo> list = service.selectList(pv, npvo);
		
		log.debug(list.get(0).toString());
		log.debug(npvo.toString());
		
		model.addAttribute("list", list);
		model.addAttribute("pv", pv);
		model.addAttribute("npvo", npvo);
		
		log.debug("list : "+list.size());

		return "news/news";
	}

	@GetMapping("area")
	public String areaList(@RequestParam(defaultValue = "1")int p
			, @RequestParam(required = false)String search
			, @RequestParam(required = false, defaultValue="T")String sort
			, Model model) {

		int typeNo = 2;
		String deleteYn = "N";
		
		NewsPageVo npvo = new NewsPageVo();
		npvo.setP(p);
		npvo.setSort(sort);
		npvo.setSearch(search);
		npvo.setTypeNo(typeNo);	
		npvo.setDeleteYn(deleteYn);
		
		log.debug("search : " + search);
		
		//PageVo 객체 만들기
		int listCount = service.selectCnt(npvo);
		if (listCount == 0 && search != null) {
			model.addAttribute("msg", "게시글이 없습니다.");
			return "admin/common/errorMsg";
		}		
		
		if(listCount == 0) {return "news/news";}
		int currentPage = p; //현재페이지
		int pageLimit = 5; //목록에 보여 줄 페이지 수
		int boardLimit = 10; //한 페이지에 보여줄 게시글 수
		PageVo pv = Pagination.getPageVo(listCount, currentPage, pageLimit, boardLimit);
		
		log.debug("pv : "+ pv);
		
		List<NewsVo> list = service.selectList(pv, npvo);
		
		log.debug(list.get(0).toString());
		log.debug(npvo.toString());
		
		model.addAttribute("list", list);
		model.addAttribute("pv", pv);
		model.addAttribute("npvo", npvo);
		
		log.debug("list : "+list.size());
		return "news/area";
	}

	@GetMapping("notice")
	public String noticeList(@RequestParam(defaultValue = "1")int p
			, @RequestParam(required = false)String search
			, @RequestParam(required = false, defaultValue="T")String sort
			, Model model) {		

		int typeNo = 3;
		String deleteYn = "N";
		
		NewsPageVo npvo = new NewsPageVo();
		npvo.setP(p);
		npvo.setSort(sort);
		npvo.setSearch(search);
		npvo.setTypeNo(typeNo);	
		npvo.setDeleteYn(deleteYn);
		
		log.debug("search : " + search);
		
		//PageVo 객체 만들기
		int listCount = service.selectCnt(npvo);
		if (listCount == 0 && search != null) {
			model.addAttribute("msg", "검색결과가 없습니다.");
			return "admin/common/errorMsg";
		}		
		int currentPage = p; //현재페이지
		int pageLimit = 5; //목록에 보여 줄 페이지 수
		int boardLimit = 10; //한 페이지에 보여줄 게시글 수
		PageVo pv = Pagination.getPageVo(listCount, currentPage, pageLimit, boardLimit);
		
		log.debug("pv : "+ pv);
		
		List<NewsVo> list = service.selectList(pv, npvo);
		
		log.debug(list.get(0).toString());
		log.debug(npvo.toString());
		
		model.addAttribute("list", list);
		model.addAttribute("pv", pv);
		model.addAttribute("npvo", npvo);
		
		log.debug("list : "+list.size());
		
		return "news/notice";
	}

	@GetMapping("detail")
	public String newsDetail(int no, Model model) {
		
		log.debug("newsDetail no : {}", no);
		
		NewsVo vo = service.newsDetail(no);	
		log.debug(vo.toString());
		model.addAttribute("vo", vo);
		
		
		String tName = checkListNo(vo.getNewsTypeNo());
		model.addAttribute("tName", tName);
		
		
		return "news/detail";
	}
}
