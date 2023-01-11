package com.kh.yess.community.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.yess.community.service.CommunityService;
import com.kh.yess.community.vo.BoardVo;

import lombok.extern.slf4j.Slf4j;

@RequestMapping("community")
@Controller
public class InfoDeleteController {

	@Autowired
	private CommunityService cs;
	
	@GetMapping("infoDelete")
	public String edit(Model model, String no, BoardVo vo) {

		int result = cs.deleteInfo(no);
		
		model.addAttribute("msg", "삭제완료!");
		model.addAttribute("msgDetail", "게시글이 삭제되었습니다.");
		model.addAttribute("path", "community/info");

		//return "redirect:info";
		return "admin/common/successMsg";

	}

}
