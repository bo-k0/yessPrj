package com.kh.yess.community.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.yess.community.service.CommunityService;
import com.kh.yess.community.vo.BoardCmtVo;

import lombok.extern.slf4j.Slf4j;

@RequestMapping("community")
@Controller
@Slf4j
public class CommunityCmtDeleteController {
	
	@Autowired
	private CommunityService cs;
	
	//댓글 삭제
	@GetMapping("CmtDelete")
	public String deleteCmt(BoardCmtVo cvo , HttpServletRequest req ) {
		
		String cmtNo = req.getParameter("cmtNo");
		
		System.out.println("cmtNo : " + cmtNo);

		int result = cs.cmtDelete(cmtNo);

		
		if(result == 1) {
			//return "community/infoDetail?no=" + no;
			return "community/infoD";
		}else {
			return "common/error";
		}
	}

}
