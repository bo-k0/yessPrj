package com.kh.yess.mypage.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.yess.member.vo.MemberVo;
import com.kh.yess.member.vo.PointVo;
import com.kh.yess.mypage.service.MypagePointService;

import lombok.extern.slf4j.Slf4j;

@RequestMapping("mypage")
@Controller
@Slf4j
public class MypagePointController {

	@Autowired
	private MypagePointService service;
	
	@GetMapping("point")
	public String pointList(HttpSession session, Model model) {
		
		MemberVo vo = (MemberVo) session.getAttribute("loginMember");	
		
		if(vo == null) {
			model.addAttribute("msg", "로그인을 먼저 해줘요");
			return "admin/common/errorMsg";
		}
		
		int memberNo = vo.getNo();
		
		List<PointVo> list = service.pointList(memberNo); 
		
		model.addAttribute("list", list);
		
		log.debug(list.toString());
		
		return "mypage/point";
	}
}
