package com.kh.yess.mypage.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.yess.common.PageVo;
import com.kh.yess.common.Pagination;
import com.kh.yess.market.vo.MarketVo;
import com.kh.yess.member.vo.MemberVo;
import com.kh.yess.mypage.service.MypageMarketService;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("mypage")
@Slf4j
public class MypageMarketController {

	@Autowired
	private MypageMarketService service;

	@GetMapping("market")
	public String market(@RequestParam(defaultValue = "1") int p, Model model, HttpSession session, MemberVo mvo,
			HttpServletRequest req) {

		// 로그인 정보
		HttpSession s = req.getSession();
		MemberVo vo = (MemberVo) s.getAttribute("loginMember");

		// 페이징처리
		// PageVo 객체 만들기 (boardLimit, pageLimit, currentPage, listCount)
		int listCount = service.myListCount(vo); // 내가쓴 글 갯수 조회
		int currentPage = p;// Integer.parseInt(p);
		int boardLimit = 10; // 목록이 10개씩 보여지게함
		int pageLimit = 5; // 리스트 번호가 10개씩 보여짐
		PageVo pv = Pagination.getPageVo(listCount, currentPage, pageLimit, boardLimit);

		//log.info("[컨트롤러]마이페이지 마켓 글 pv : " + pv);

		// 마켓 리스트 조회
		List<MarketVo> voList = service.myList(pv, p);

		model.addAttribute("vo", vo);
		model.addAttribute("pv", pv);
		model.addAttribute("voList", voList);

		return "mypage/market";

	}

	@GetMapping("marketCmt")
	public String marketCmt(@RequestParam(defaultValue = "1") int p, Model model, HttpSession session, MemberVo mvo,
			HttpServletRequest req) {

		// 로그인 정보
		HttpSession s = req.getSession();
		MemberVo vo = (MemberVo) s.getAttribute("loginMember");

		// 페이징처리
		// PageVo 객체 만들기 (boardLimit, pageLimit, currentPage, listCount)
		int listCount = service.myCmtListCount(vo); // 내가쓴 댓글 갯수 조회
		int currentPage = p;// Integer.parseInt(p);
		int boardLimit = 10; // 목록이 10개씩 보여지게함
		int pageLimit = 5; // 리스트 번호가 10개씩 보여짐
		PageVo pv = Pagination.getPageVo(listCount, currentPage, pageLimit, boardLimit);

		//log.info("[컨트롤러]마이페이지 마켓 댓글pv : " + pv);

		// 마켓 리스트 조회
		List<MarketVo> voList = service.myCmtList(pv, p);

		model.addAttribute("vo", vo);
		model.addAttribute("pv", pv);
		model.addAttribute("voList", voList);

		return "mypage/marketCmt";

	}

}// class
