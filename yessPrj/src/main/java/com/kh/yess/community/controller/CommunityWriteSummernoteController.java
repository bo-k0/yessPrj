package com.kh.yess.community.controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.JsonObject;
import com.kh.yess.community.service.CommunityService;
import com.kh.yess.community.vo.BoardVo;

import lombok.extern.slf4j.Slf4j;

@RequestMapping("community")
@Controller
@Slf4j
public class CommunityWriteSummernoteController {
	
	@Autowired
	private CommunityService cs;
	
	//게시글 작성 (화면)
	@GetMapping("write_summernote")
	public String write() {
		return "community/write_summernote";
	}
	
	//게시글 작성하기
	@PostMapping(value="write_summernote", produces = "application/json; charset=utf8")
	public String write(BoardVo vo) {

		int result = cs.write(vo);
		
		log.info("result : " + result);
		
		if(result == 1) {
			return "redirect:info";
		}else {
			return "common/error";
		}

	}
}


