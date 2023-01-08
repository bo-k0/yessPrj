package com.kh.yess.community.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.yess.community.page.PageVo;
import com.kh.yess.community.page.Pagination;
import com.kh.yess.community.service.CommunityService;
import com.kh.yess.community.vo.BoardPageVo;
import com.kh.yess.community.vo.BoardVo;
import com.kh.yess.member.vo.MemberVo;

import lombok.extern.slf4j.Slf4j;

@RequestMapping("admin/community")
@Controller
@Slf4j
public class AdminMainController {
	
	@Autowired
	private CommunityService cs;
	
	//화면
	@GetMapping("adminMain")
	public String main(Model model, String no,@RequestParam(defaultValue = "1")int p, 
			   @RequestParam(required = false)String search, 
			   @RequestParam(required = false, defaultValue="T")String sort, 
			   HttpSession session, MemberVo mvo,HttpServletRequest req) {
		
		BoardVo vo = cs.selectTopHit(no);
		BoardVo vvo = cs.selectTopView(no);
		//BoardVo cvo = cs.selectTopCmt(no);
		
		int cateNo = 1;
		String deleteYn = "N";
		
		BoardPageVo bpvo = new BoardPageVo();
		bpvo.setP(p);
		bpvo.setSort(sort);
		bpvo.setSearch(search);
		bpvo.setCateNo(cateNo);
		bpvo.setDeleteYn(deleteYn);
		
		log.info("search : " + search);
		
		//PageVo 객체 만들기
		int listCount = cs.selectCnt(bpvo);
		if (listCount == 0) {
			model.addAttribute("msg", "검색결과가 없습니다.");
			return "admin/common/errorMsg";
		}		


		int currentPage = p; //현재페이지
		int pageLimit = 5; //목록에 보여 줄 페이지 수
		int boardLimit = 5; //한 페이지에 보여줄 게시글 수
		PageVo pv = Pagination.getPageVo(listCount, currentPage, pageLimit, boardLimit);
		
		
		List<BoardVo> list = cs.selectList(bpvo,pv);

		log.info(list.get(0).toString());
		log.info(bpvo.toString());
		
		model.addAttribute("list", list);
		model.addAttribute("pv", pv);
		model.addAttribute("bpvo", bpvo);
		
		
		model.addAttribute("vo", vo);
		model.addAttribute("vvo", vvo);
		//model.addAttribute("cvo", cvo);

		return "admin/community/adminMain";
	}
	

}
