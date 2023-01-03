package com.kh.yess.whereTo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.yess.whereTo.service.WhereToService;
import com.kh.yess.whereTo.vo.WhereToVo;

import lombok.extern.slf4j.Slf4j;

@RequestMapping("whereTo")
@Controller
@Slf4j
public class WhereToController {
	
	@Autowired
	private WhereToService service;
	
	@GetMapping("place")
	public String anywhere(int no, Model model) {
		
		WhereToVo vo = service.whereToOne(no);
		
		model.addAttribute("vo", vo);
		
		return "whereTo/place";
	}
	
	@GetMapping("list")
	public String everywhere(Model model) {
		
		List<WhereToVo> list = service.whereToList();
		
		model.addAttribute("list", list);
		
		log.info(list.toString());
		
		return "whereTo/list";
	}

}
