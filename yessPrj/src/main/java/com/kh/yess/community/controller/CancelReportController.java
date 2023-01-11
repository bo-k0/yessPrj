package com.kh.yess.community.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.yess.community.service.CommunityService;

import lombok.extern.slf4j.Slf4j;

@RequestMapping("community")
@Controller
@Slf4j
public class CancelReportController {
	
	@Autowired
	private CommunityService cs;
	
	@PostMapping("cancelReport")
	public String like(Model model, String no) throws IOException {
				
		System.out.println("cancelReport no ::" +no);
		int result = cs.cancelReport(no);
		
		return "community/infoDetail";

	}
}
