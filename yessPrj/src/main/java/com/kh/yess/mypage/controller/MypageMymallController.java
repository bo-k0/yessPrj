package com.kh.yess.mypage.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.yess.common.PageVo;
import com.kh.yess.common.Pagination;
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
	public String mymall(@RequestParam(defaultValue = "1") int p,Model model, HttpSession session) {
		
		MemberVo loginMember = (MemberVo) session.getAttribute("loginMember");

		if(loginMember == null) {
			model.addAttribute("msg", "로그인을 먼저 해줘요");
			return "admin/common/errorMsg";
		}
		
		int memberNo = loginMember.getNo();
				
		// 페이징처리
		// PageVo 객체 만들기 (boardLimit, pageLimit, currentPage, listCount)
		int listCount = mms.myListCount(memberNo); // 마켓 전체 게시글 갯수 조회
		int currentPage = p;// Integer.parseInt(p);
		int boardLimit = 10; // 목록이 10개씩 보여지게함
		int pageLimit = 10; // 리스트 번호가 10개씩 보여짐
		PageVo pv = Pagination.getPageVo(listCount, currentPage, pageLimit, boardLimit);
		log.debug(pv.toString());
				
		//주문리스트조회
		List<OrderVo> orderList = mms.selectOrderList(memberNo, pv);
		
		
		model.addAttribute("orderList", orderList);
		model.addAttribute("pv", pv);
		
		return "mypage/mymall";
	}


}
