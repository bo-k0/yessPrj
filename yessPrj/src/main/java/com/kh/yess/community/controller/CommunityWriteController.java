package com.kh.yess.community.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.yess.community.service.CommunityService;
import com.kh.yess.community.vo.BoardVo;

import lombok.extern.slf4j.Slf4j;

@RequestMapping("community")
@Controller
@Slf4j
public class CommunityWriteController {
	
	@Autowired
	private CommunityService cs;
	
	//화면
	@GetMapping("write")
	public String write() {
		return "community/write";
	}
	
	//작성하기
	@PostMapping("write")
	public String write(BoardVo vo) {
		System.out.println("11");

		int result = cs.write(vo);
		System.out.println("44");

		log.info("insert result : " + result);
		return "community/info";
	}
	

}
