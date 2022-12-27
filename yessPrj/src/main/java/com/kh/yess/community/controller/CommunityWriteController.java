package com.kh.yess.community.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.yess.common.FileUploader;
import com.kh.yess.community.service.CommunityService;
import com.kh.yess.community.vo.BoardAttachmentVo;
import com.kh.yess.community.vo.BoardVo;
import com.kh.yess.mall.vo.AttachmentVo;

import lombok.extern.slf4j.Slf4j;

@RequestMapping("community")
@Controller
@Slf4j
public class CommunityWriteController {
	
	@Autowired
	private CommunityService cs;
	
	//게시글 작성 (화면)
	@GetMapping("write")
	public String write() {
		return "community/write";
	}
	
	//게시글 작성하기
	@PostMapping("write")
	public String write(BoardVo vo, HttpServletRequest req) {
		
		List<BoardAttachmentVo> imglist = null;
		if(!vo.isEmpty()) {
			imglist = FileUploader.commUpload(req, vo);
		}

		int result = cs.write(vo, imglist);
		
		log.info("result : " + result);
		
		if(result == 1) {
			return "redirect:info";
		}else {
			return "common/error";
		}

	}
	
	

}
