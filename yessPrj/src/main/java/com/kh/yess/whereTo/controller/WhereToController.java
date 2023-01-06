package com.kh.yess.whereTo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.yess.whereTo.service.WhereToService;
import com.kh.yess.whereTo.vo.WhereToVo;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class WhereToController {
	
	@Autowired
	private WhereToService service;
	
	@GetMapping("whereTo")
	public String everywhere(@RequestParam(defaultValue = "0")int n, Model model) {
		
		log.debug("number : "+n);
		
		List<WhereToVo> list = service.whereToList();
		
		model.addAttribute("list", list);
		
		model.addAttribute("n", n);				
		
		log.debug(list.toString());
		
		return "whereTo/place";
	}

	@GetMapping("admin/whereTo")
	public String everywhere(@RequestParam(defaultValue = "0")int n, Model model) {
		
		log.debug("number : "+n);
		
		List<WhereToVo> list = service.whereToList();
		
		model.addAttribute("list", list);
		
		model.addAttribute("n", n);				
		
		log.debug(list.toString());
		
		return "admin/whereTo/place";
	}

}