package com.kh.yess.faq.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.yess.faq.service.FaqService;
import com.kh.yess.faq.vo.FaqVo;
import com.kh.yess.faq.vo.QnaVo;

import lombok.extern.slf4j.Slf4j;

@RequestMapping("faq")
@Controller
@Slf4j
public class FaqController {
	
	@Autowired
	private FaqService service;

	//faq 리스트
	@GetMapping("list")
	public String list(@RequestParam(value = "typeNo", defaultValue = "0")int typeNo, Model model) {
		List<FaqVo> faqList = service.faqList(typeNo);
		model.addAttribute("faqList", faqList);
		
		return "faq/list";
	}

	
	//1:1 문의 팝업(회원)
	@GetMapping("write")
	public String faqWrite() {
		return "faq/write";
	}
	
	@PostMapping("write")
	public String faqWrite(HttpServletRequest req, QnaVo vo, Model model) {
		log.info("[컨트롤러]1:1 문의 : " + vo.toString());
		int result = service.qnaWrite(vo);
		
		if (result == 1) {
			model.addAttribute("msg", "1:1 문의");
			model.addAttribute("msgDetail", "1:1 문의가 전송되었습니다.");
			model.addAttribute("path", "faq/list");
			return "admin/common/successClose";
		} else {
			model.addAttribute("msg", "등록 실패");
			return "admin/common/errorMsg";
		}
		
	}
}
