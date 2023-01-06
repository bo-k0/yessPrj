package com.kh.yess.community.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.yess.community.service.CommunityService;
import com.kh.yess.community.vo.BoardAttachmentVo;
import com.kh.yess.community.vo.BoardCmtVo;
import com.kh.yess.community.vo.BoardVo;
import com.kh.yess.member.vo.MemberVo;

@RequestMapping("community")
@Controller
public class InfoDetailController {

	@Autowired
	private CommunityService cs;
	
	@GetMapping("infoDetail")
	public String detail(Model model, String no) {
	
		if(no == null) {
			no = "1";
		}
		
		BoardVo vo = cs.infoDetail(no);	
		
		List<BoardAttachmentVo> prodImglist = cs.selectProdImg(no);
		
		List<BoardCmtVo> cvo = cs.selectCommCmt(no);

		model.addAttribute("vo", vo);
		model.addAttribute("cvo", cvo);
		//model.addAttribute("prodImglist",prodImglist);
		
		//System.out.println(prodImglist);
		System.out.println("vo :" + vo);
		
		return "community/infoDetail";

	}
	

}
