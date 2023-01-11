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
import com.kh.yess.faq.vo.QnaVo;
import com.kh.yess.member.vo.MemberVo;
import com.kh.yess.mypage.dao.MypageQnaService;

import lombok.extern.slf4j.Slf4j;
import oracle.jdbc.proxy.annotation.GetProxy;

@Controller
@RequestMapping("admin/mypage")
@Slf4j
public class AdminMypageQnaController {

	@Autowired
	private MypageQnaService service;

	// 어드민 마이페이지 1:1문의 리스트
	@GetMapping("qnaList")
	public String qnaList(@RequestParam(defaultValue = "1") int p, Model model, QnaVo qvo, HttpServletRequest req) {

		// 페이징처리
		// PageVo 객체 만들기 (boardLimit, pageLimit, currentPage, listCount)
		int listCount = service.adminQnaListCount(); // 
		int currentPage = p;// Integer.parseInt(p);
		int boardLimit = 10; // 목록이 10개씩 보여지게함
		int pageLimit = 5; // 리스트 번호가 10개씩 보여짐
		PageVo pv = Pagination.getPageVo(listCount, currentPage, pageLimit, boardLimit);

		// 1:1문의내역 리스트 조회
		List<QnaVo> qnaList = service.adminQnaList(pv, p);

		model.addAttribute("qvo", qvo);
		model.addAttribute("pv", pv);
		model.addAttribute("qnaList", qnaList);

		return "admin/mypage/qnaList";

	}


	// 1:1문의 상세조회
	@GetMapping("qnaAnswer")
	public String qnaDetail(String qno, Model model) {
		int no = Integer.parseInt(qno);
		log.info("마이페이지 문의내역 번호" + no);

		QnaVo vo = service.qnaDetail(no);
		model.addAttribute("vo", vo);
		return "admin/mypage/qnaAnswer";
	}
	
	//1:1문의 답변	
	@PostMapping("qnaAnswer")
	public String qnaAnswer(QnaVo vo, Model model) {
		log.info("[컨트롤러]1:1 문의 답변: " + vo.toString());
		int result = service.qnaAnswer(vo);
		
		if (result == 1) {
			model.addAttribute("msg", "QNA 답변");
			model.addAttribute("msgDetail", "답변이 작성되었습니다");
			model.addAttribute("path", "admin/mypage/qnaList");
			return "admin/common/successClose";
		} else {
			model.addAttribute("msg", "등록 실패");
			return "admin/common/errorMsg";
		}
		
	}
	
	
	

}// class
