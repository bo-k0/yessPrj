package com.kh.yess.mypage.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.yess.mall.vo.CartVo;
import com.kh.yess.mall.vo.OrderVo;
import com.kh.yess.member.vo.MemberVo;
import com.kh.yess.mypage.service.MypageMymallService;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("mypage")
@Slf4j
public class MypageMymallController {
	
	@Autowired
	private MypageMymallService mms;
	
	//주문내역 조회
	@GetMapping("mymall")
	public String mymall(Model model, HttpSession session) {
		
		MemberVo loginMember = (MemberVo) session.getAttribute("loginMember");
		int memberNo = loginMember.getNo();
				
		List<OrderVo> orderList = mms.selectOrderList(memberNo);
		log.info(orderList.toString());
		model.addAttribute("orderList", orderList);
		
		return "mypage/mymall";
	}


}
