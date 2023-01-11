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

@RequestMapping("admin/faq")
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
			return "admin/common/successClose";
		} else {
			model.addAttribute("msg", "등록 실패");
			return "admin/common/errorMsg";
		}

	}

}
