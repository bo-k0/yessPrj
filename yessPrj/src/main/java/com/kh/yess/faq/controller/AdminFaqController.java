package com.kh.yess.faq.controller;

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
import com.kh.yess.faq.service.FaqService;
import com.kh.yess.faq.vo.FaqVo;
import com.kh.yess.faq.vo.QnaVo;
import com.kh.yess.market.vo.MarketVo;

import lombok.extern.slf4j.Slf4j;

@RequestMapping("admin/mypage")
@Controller
@Slf4j
public class AdminFaqController {

	@Autowired
	private FaqService service;

	// faq 리스트
	@GetMapping("list")
	public String list(@RequestParam(value = "typeNo", defaultValue = "0") int typeNo, Model model) {
		List<FaqVo> faqList = service.faqList(typeNo);
		model.addAttribute("faqList", faqList);

		return "admin/faq/list";
	}

	// faq 등록
	@GetMapping("write")
	public String faqWrite() {
		return "admin/faq/write";
	}

	@PostMapping("write")
	public String faqWrite(HttpServletRequest req, FaqVo vo, Model model) {
		log.info("[컨트롤러]faq 등록 : " + vo.toString());
		int result = service.faqWrite(vo);

		if (result == 1) {
			model.addAttribute("msg", "FAQ 등록");
			model.addAttribute("msgDetail", "FAQ 등록이 완료되었습니다.");
			model.addAttribute("path", "admin/faq/list");
			return "admin/common/successMsg";
		} else {
			model.addAttribute("msg", "등록 실패");
			return "admin/common/errorMsg";
		}

	}

	// 마이페이지 1:1문의 리스트
	public String qnaList(@RequestParam(defaultValue = "1") int p, Model model, QnaVo qvo, HttpServletRequest req) {

		// 페이징처리
		// PageVo 객체 만들기 (boardLimit, pageLimit, currentPage, listCount)
		int listCount = service.qnaListCount(qvo); // 내가쓴 글 갯수 조회
		int currentPage = p;// Integer.parseInt(p);
		int boardLimit = 10; // 목록이 10개씩 보여지게함
		int pageLimit = 5; // 리스트 번호가 10개씩 보여짐
		PageVo pv = Pagination.getPageVo(listCount, currentPage, pageLimit, boardLimit);

		// 1:1문의내역 리스트 조회
		List<QnaVo> qnaList = service.qnaList(pv, p);

		model.addAttribute("qvo", qvo);
		model.addAttribute("pv", pv);
		model.addAttribute("qnaList", qnaList);

		return "admin/mypage/qnaList";

	}

}
