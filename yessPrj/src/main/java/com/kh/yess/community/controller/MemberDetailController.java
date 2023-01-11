package com.kh.yess.community.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.yess.community.service.CommunityService;
import com.kh.yess.member.vo.MemberVo2;


@RequestMapping("admin/member")
@Controller
public class MemberDetailController {
	
	@Autowired
	private CommunityService cs;
	
	@GetMapping("detail")
	public String detail(Model model, String no) {
	
		if(no == null) {
			no = "1";
		}
		
		MemberVo2 vo = cs.memberDetail(no);	
		

		model.addAttribute("vo", vo);
		
		System.out.println("Member Detail 에서 vo :" + vo);
		
		return "admin/member/detail";

	}
	

}
