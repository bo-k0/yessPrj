package com.kh.yess.market.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.yess.common.FileUploader;
import com.kh.yess.common.PageVo;
import com.kh.yess.common.Pagination;
import com.kh.yess.market.vo.MarketAttachmentVo;
import com.kh.yess.market.vo.MarketCmtVo;
import com.kh.yess.market.service.MarketService;
import com.kh.yess.market.vo.MarketVo;

import lombok.extern.slf4j.Slf4j;
import oracle.jdbc.proxy.annotation.Post;

@RequestMapping("admin/market")
@Controller
@Slf4j
public class AdminMarketController {

	@Autowired
	private MarketService service;

	// 마켓 리스트
	@GetMapping("list")
	public String list(@RequestParam(defaultValue = "1") int p, // 페이지 번호
			@RequestParam(value = "tradeType", required = false) String tradeType, // 검색기능 구분
			@RequestParam(value = "tradeName", required = false) String tradeName, // 검색기능 이름
			Model model) {

		// 마켓검색
		Map<String, String> map = new HashMap<>();
		map.put("tradeType", tradeType);
		map.put("tradeName", tradeName);

		// 페이징처리
		// PageVo 객체 만들기 (boardLimit, pageLimit, currentPage, listCount)
		int listCount = service.listCount(map); // 마켓 전체 게시글 갯수 조회
		int currentPage = p;// Integer.parseInt(p);
		int boardLimit = 10; // 목록이 10개씩 보여지게함
		int pageLimit = 10; // 리스트 번호가 10개씩 보여짐
		PageVo pv = Pagination.getPageVo(listCount, currentPage, pageLimit, boardLimit);

		log.info("[컨트롤러]마켓pv : " + pv);

		// 마켓 리스트 조회
		List<MarketVo> voList = service.list(map, pv);
		
		log.info("[컨트롤러]마켓 검색 : " + tradeType + " / 검색이름 : " + tradeName);
		log.info("[컨트롤러]마켓 리스트 : " + voList);

		model.addAttribute("pv", pv);
		model.addAttribute("voList", voList);
		model.addAttribute("map", map);
		return "admin/market/list";

	}

	// 마켓 작성
	@GetMapping("write")
	public String write(MarketVo vo) {

		return "admin/market/write";
	}

	@PostMapping("write")
	public String write(HttpServletRequest req, MarketVo vo, Model model) {

		log.info("[컨트롤러]마켓 글 작성 : " + vo.toString());

		// 이미지 업로드
		List<MarketAttachmentVo> marketImgList = null;
		if (!vo.isEmpty()) {
			marketImgList = FileUploader.marketUpload(req, vo);
		}

		log.info("[컨트롤러]마켓 이미지 업로드 : " + marketImgList.toString());

		// 글 작성
		int result = service.write(vo, marketImgList);

		if (result == 1) {
			model.addAttribute("msg", "게시글 등록");
			model.addAttribute("msgDetail", "등록이 완료되었습니다.");
			model.addAttribute("path", "admin/market/list");
			return "admin/common/successMsg";
		} else {
			model.addAttribute("msg", "등록 실패");
			return "admin/common/errorMsg";
		}

	}

	// 마켓 상세
	@GetMapping("detail")
	public String detail(int no, Model model) {

		log.info("[컨트롤러] 마켓 상세조회 글번호 : " + no);

		MarketVo vo = service.detail(no); //상세조회
		List<MarketCmtVo> cmtListVo = service.cmtList(no); //댓글조회
		int cmtCnt = service.cmtCnt(no); //댓글갯수 조회
		
		model.addAttribute("vo", vo);
		model.addAttribute("cmtListVo", cmtListVo);
		model.addAttribute("cmtCnt", cmtCnt);
		
		return "admin/market/detail";
	}
	
	

	// 마켓 수정
	@GetMapping("edit")
	public String edit(int no, Model model) {

		log.info("[컨트롤러] 마켓 수정 글번호 : " + no);

		MarketVo vo = service.detail(no);
		model.addAttribute("vo", vo);
		
		log.info("[컨트롤러] 마켓 수정 vo : " + vo);

		return "admin/market/edit";
	}
	
	@PostMapping("edit")
	public String edit(HttpServletRequest req, MarketVo vo, Model model) {


		// 이미지 수정
		List<MarketAttachmentVo> marketImgList = null;
		marketImgList = FileUploader.marketUploadEdit(req, vo);

		log.info("[컨트롤러]마켓 글 수정 : " + vo.toString());
		log.info("[컨트롤러]마켓 이미지 수정 : " + marketImgList.toString());

		// 글 수정
		int result = service.edit(vo, marketImgList);

		if (result == 1) {
			model.addAttribute("msg", "게시글 수정");
			model.addAttribute("msgDetail", "수정이 완료되었습니다.");
			model.addAttribute("path", "market/list");
			return "admin/common/successMsg";
		} else {
			model.addAttribute("msg", "수정 실패");
			return "admin/common/errorMsg";
		}

	}
	

	// 마켓 삭제
	@GetMapping("delete")
	public String delete(String no, Model model) {
		
		log.info("[컨트롤러] 마켓 삭제 글번호 : " + no);
		
		int result = service.delete(no);
		if (result == 1) {
			model.addAttribute("msg", "게시글 삭제");
			model.addAttribute("msgDetail", "삭제가 완료되었습니다.");
			model.addAttribute("path", "market/list");
			return "admin/common/successMsg";
		} else {
			return "admin/common/errorMsg";
		}
		
	}
	
	// 거래완료 변경
	@GetMapping("tradeY")
	public String tradeY(String no, Model model) {
		
		log.info("[컨트롤러] 마켓 거래완료 : " + no);
		
		int result = service.tradeY(no);
		if (result == 1) {
			model.addAttribute("msg", "거래완료 변경");
			model.addAttribute("msgDetail", "거래가 완료되었습니다.");
			model.addAttribute("path", "market/list");
			return "admin/common/successMsg";
		} else {
			return "admin/common/errorMsg";
		}
		
	}
	
	// 거래완료 취소
	@GetMapping("tradeN")
	public String tradeN(String no, Model model) {
		
		log.info("[컨트롤러] 마켓 거래완료 : " + no);
		
		int result = service.tradeN(no);
		if (result == 1) {
			model.addAttribute("msg", "거래완료 취소");
			model.addAttribute("msgDetail", "거래완료 상태를 취소하였습니다.");
			model.addAttribute("path", "market/list");
			return "admin/common/successMsg";
		} else {
			return "admin/common/errorMsg";
		}
		
	}
	
	//댓글 등록
	@PostMapping("cmtWrite")
	@ResponseBody
	public int cmtWrite(MarketCmtVo cmtVo, Model model) {
		
		log.info("[컨트롤러] 댓글 등록  : " + cmtVo);
		
		int result = service.cmtWrite(cmtVo);

		if (result == 1) {
			model.addAttribute("msg", "댓글 등록 실패");
		}
		return result;
	}
	
	//댓글 삭제
	@PostMapping("cmtDelete")
	@ResponseBody
	public int cmtDelete(int no) {
		log.info("[컨트롤러] 댓글 삭제 글번호 : " + no);
		int result = service.cmtDelete(no);		
		return result;
	}
	
}
