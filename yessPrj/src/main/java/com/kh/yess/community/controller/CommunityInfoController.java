package com.kh.yess.community.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.yess.community.page.PageVo;
import com.kh.yess.community.page.Pagination;
import com.kh.yess.community.service.CommunityService;
import com.kh.yess.community.vo.BoardVo;
import com.kh.yess.member.vo.MemberVo;

import lombok.extern.slf4j.Slf4j;

@RequestMapping("community")
@Controller
@Slf4j
public class CommunityInfoController {
	
	@Autowired
	private CommunityService cs;
	
	//게시글 목록 화면
	@GetMapping("info")
	public String list(@RequestParam(defaultValue = "1")int p, 
					   @RequestParam(value="type", required = false)String type, //검색기능 구분
					   @RequestParam(value="name", required = false)String name, //검색기능 이름
					   Model model, HttpSession session, MemberVo mvo,HttpServletRequest req) {  //spring에선 request 대신 model 로 쓰기
		
		//PageVo 객체 만들기
		int listCount = cs.selectCnt();
		int currentPage = p; //현재페이지
		int pageLimit = 5; //목록에 보여 줄 페이지 수
		int boardLimit = 10; //한 페이지에 보여줄 게시글 수
		PageVo pv = Pagination.getPageVo(listCount, currentPage, pageLimit, boardLimit);
		
		log.info("pv : "+ pv);
		
	    //마켓 검색
		Map<String , String> map = new HashMap<>();
	    map.put("type", type);
	    map.put("name", name);
		
		List<BoardVo> voList = cs.selectList(map,pv);
		
		model.addAttribute("voList", voList);
		model.addAttribute("pv", pv);
		
		log.info("volist : "+voList.toString());
		
		return "community/info";
	}
	
	@PostMapping("info")
	public String info(BoardVo vo) {
		return "community/info";
	}
	
	
	

}
