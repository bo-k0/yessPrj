package com.kh.yess.community.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.yess.community.page.PageVo;
import com.kh.yess.community.service.CommunityService;
import com.kh.yess.community.vo.BoardVo;

@RequestMapping("community")
@Controller
public class CommunityQnaController {
	
	@Autowired
	private CommunityService cs;
	
	//화면
	@GetMapping("qna")
	public String qna(HttpServletRequest req, HttpServletResponse resp) {
		
		//페이징 처리
		int listCount;
		int currentPage;
		int pageLimit;
		int boardLimit;
		
		int maxPage;
		int startPage;
		int endPage;
		
		listCount = cs.selectCnt();
		currentPage = Integer.parseInt(req.getParameter("pno")); //int 로 타입 맞춰주기
		pageLimit = 5;
		boardLimit = 10;
		
	      maxPage = (int)Math.ceil((double)listCount / boardLimit);
	      
	      startPage = (currentPage-1) / pageLimit * pageLimit + 1;
	      endPage = startPage + pageLimit - 1;
	      
	      if(endPage > maxPage) {
	         endPage = maxPage;
	      }
	      
	      PageVo pv = new PageVo();
	      pv.setListCount(listCount);
	      pv.setCurrentPage(currentPage);
	      pv.setPageLimit(pageLimit);
	      pv.setBoardLimit(boardLimit);
	      pv.setMaxPage(maxPage);
	      pv.setStartPage(startPage);
	      pv.setEndPage(endPage);
	      
		//디비다녀오기
		List<BoardVo> voList = cs.selectList(pv);
		
		req.setAttribute("voList", voList);
		req.setAttribute("pv", pv);
		
		//화면선택
		//req.getRequestDispatcher("/views/board/list.jsp").forward(req, resp);
		return "community/qna";
	}
	
	@PostMapping("qna")
	public String qna(BoardVo vo) {
		return "community/qna";
	}

}
