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

@RequestMapping("admin/community")
@Controller
public class AdminInfoDetailController {

	@Autowired
	private CommunityService cs;
	
	@GetMapping("adminInfoDetail")
	public String detail(Model model, String no) {
	
		if(no == null) {
			no = "1";
		}
		
		BoardVo vo = cs.infoDetail(no);	
		
		List<BoardAttachmentVo> prodImglist = cs.selectProdImg(no);
		
		List<BoardCmtVo> cvo = cs.selectCommCmt(no);

		model.addAttribute("vo", vo);
		model.addAttribute("cvo", cvo);
		model.addAttribute("prodImglist",prodImglist);
		
		System.out.println(prodImglist);
		System.out.println("vo :" + vo);
		System.out.println("InfoDetail 에서 cvo :" + cvo);
		
		return "admin/community/adminInfoDetail";

	}
	

}
