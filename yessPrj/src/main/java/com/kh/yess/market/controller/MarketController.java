package com.kh.yess.market.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.yess.common.FileUploader;
import com.kh.yess.common.PageVo;
import com.kh.yess.common.Pagination;
import com.kh.yess.market.vo.MarketAttachmentVo;
import com.kh.yess.market.service.MarketService;
import com.kh.yess.market.vo.MarketVo;

import lombok.extern.slf4j.Slf4j;
import oracle.jdbc.proxy.annotation.Post;

@RequestMapping("market")
@Controller
@Slf4j
public class MarketController {

	@Autowired
	private MarketService service;

	// 마켓 리스트
	@GetMapping("list")
	public String list(@RequestParam(defaultValue = "1") int p, // 페이지 번호
			@RequestParam(value = "tradeType", required = false) String tradeType, // 검색기능 구분
			@RequestParam(value = "tradeName", required = false) String tradeName, // 검색기능 이름
			Model model) {

		// 페이징처리
		// PageVo 객체 만들기 (boardLimit, pageLimit, currentPage, listCount)
		int listCount = service.listCount(); // 마켓 전체 게시글 갯수 조회
		int currentPage = p;// Integer.parseInt(p); *****원래 이거 써야함*****
		int boardLimit = 10; // 목록이 10개씩 보여지게함
		int pageLimit = 10; // 리스트 번호가 5개씩 보여짐
		PageVo pv = Pagination.getPageVo(listCount, currentPage, pageLimit, boardLimit);

		log.info("[컨트롤러]마켓pv : " + pv);

		// 마켓 검색
		Map<String, String> map = new HashMap<>();
		map.put("tradeType", tradeType);
		map.put("tradeName", tradeName);

		// 마켓 리스트 조회
		List<MarketVo> voList = service.list(map, pv);

		log.info("[컨트롤러]마켓 검색 : " + tradeType + " / 검색이름 : " + tradeName);
		log.info("[컨트롤러]마켓 리스트 : " + voList);

		model.addAttribute("pv", pv);
		model.addAttribute("voList", voList);
		return "market/list";

	}


	// 마켓 작성
	@GetMapping("write")
	public String write(MarketVo vo) { //thumbImg == 1이면 썸네일 없음

		return "market/write";
	}

	@PostMapping("write")
	public String write(HttpServletRequest req, MarketVo vo) {

		log.info("[컨트롤러]마켓 글 작성 : " + vo.toString());
		
		
		// 이미지 업로드
		List<MarketAttachmentVo> marketImgList = null;
		if (!vo.isEmpty()) {
			marketImgList = FileUploader.marketUpload(req, vo);
		}
		
		log.info("[컨트롤러]마켓 이미지 업로드 : " + marketImgList.toString());

		
		//글 작성
		int result = service.write(vo, marketImgList);
		
		if(result == 1) {
			return "market/write";			
		}else {
			return "[ERROR]";
		}
		
	}
	
	// 마켓 상세
	@GetMapping("detail")
	public String detail() {
		return "market/detail";
	}
	
	// 마켓 수정
	@GetMapping("edit")
	public String edit() {
		return "market/edit";
	}
}
