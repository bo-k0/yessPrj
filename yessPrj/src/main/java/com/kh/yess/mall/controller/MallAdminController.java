package com.kh.yess.mall.controller;

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

import com.kh.yess.common.FileUploader;
import com.kh.yess.common.PageVo;
import com.kh.yess.common.Pagination;
import com.kh.yess.mall.service.MallAdminService;
import com.kh.yess.mall.service.MallService;
import com.kh.yess.mall.vo.AttachmentVo;
import com.kh.yess.mall.vo.ProdVo;
import com.kh.yess.mall.vo.ReviewVo;

import lombok.extern.slf4j.Slf4j;


@Controller
@RequestMapping("admin/mall")
@Slf4j
public class MallAdminController {
	
	@Autowired private MallAdminService mas;
	@Autowired private MallService ms;
	
	
	//예스몰 상품리스트 화면
	@GetMapping("list")
	public String list(@RequestParam(defaultValue = "1")int p,//페이지 번호
						@RequestParam(required = false)String category, //검색기능 구분 
						@RequestParam(value="search", required = false)String search,//검색기능이름
						Model model) {
		
		//제품검색
		Map<String, String> map = new HashMap<>();
		map.put("category", category);
		map.put("search", search);
		
		// 페이징처리
		// PageVo 객체 만들기 (boardLimit, pageLimit, currentPage, listCount)
		int listCount = ms.listCount(map); // 마켓 전체 게시글 갯수 조회
		int currentPage = p;// Integer.parseInt(p);
		int boardLimit = 15; // 목록이 10개씩 보여지게함
		int pageLimit = 10; // 리스트 번호가 10개씩 보여짐
		PageVo pv = Pagination.getPageVo(listCount, currentPage, pageLimit, boardLimit);
		log.info(pv.toString());
		
		//제품리스트조회
		List<ProdVo> malllist = ms.selectlist(map, pv);
		log.debug(malllist.toString());
		
		model.addAttribute("malllist", malllist);
		model.addAttribute("pv",pv);
		model.addAttribute("map", map);
		
		return "admin/mall/list";
	}
//-----------------------------------------------------------------------------------------------------
	
	//제품상세화면
	@GetMapping("detail")
	public String datail(int no, Model model) {
		
		//상품정보조회
		ProdVo prod = ms.selectProd(no);
		
		//상품사진조회
		List<AttachmentVo> prodImglist = ms.selectProdImg(no);
		
		model.addAttribute("prod",prod);
		model.addAttribute("prodImglist",prodImglist);
		
		//상품리뷰조회
		ReviewVo rv = new ReviewVo();
		rv.setProdNo(no);
		List<ReviewVo> rvList = ms.selectRvlist(rv);
		
		model.addAttribute("rvList", rvList);
		log.info(rvList.toString());
		
		log.debug(prodImglist.toString());
		
		return "admin/mall/detail";
	}
	
//-----------------------------------------------------------------------------------------------------
	
	//예스몰 상품등록
	@GetMapping("adminadd")
	public String adminAdd() {
		return "admin/mall/adminadd";
	}
	
	@PostMapping("adminadd")
	public String adminAdd(ProdVo vo, HttpServletRequest req) {
		
		log.debug(vo.toString());

		List<AttachmentVo> imglist = null;
		if(!vo.isEmpty()) {
			imglist = FileUploader.upload(req, vo);
		}
		
		log.debug(imglist.toString());
		
		//상품정보등록
		int result = mas.addProd(vo, imglist);
		
		if(result == 1) {
			return "redirect:/admin/mall/list";			
		}else {
			return "admin/mall/adminadd";
		}
		
		
	}
	
	//예스몰 상품수정
	@GetMapping("updateProd")
	public String updateProd(int no, Model model) {
		
		ProdVo prod = ms.selectProd(no);
		
		//상품사진조회
		List<AttachmentVo> prodImglist = ms.selectProdImg(no);
		
		model.addAttribute("prod",prod);
		model.addAttribute("prodImglist",prodImglist);
		
		return "admin/mall/updateProd";
	}
	
	@PostMapping("updateProd")
	public String updateProd(ProdVo vo, HttpServletRequest req,Model model) {
		
		log.info(vo.toString());

		List<AttachmentVo> imglist = null;
		if(!vo.isEmpty()) {
			imglist = FileUploader.upload(req, vo);
		}

		//상품정보수정
		int result = mas.updateProd(vo, imglist);
		
		if(result == 1) {
			return "redirect:/admin/mall/detail?no="+vo.getProdNo();			
		}else {
			model.addAttribute("msg", "제품 정보 수정에 실패하였습니다.");
			return "admin/common/errorMsg";
		}
	}
	
	//예스몰 상품 삭제	
	@PostMapping("delete")
	public String deleteProd(int no, Model model) {
		
		//상품정보수정
		int result = mas.deleteProd(no); //prod테이블에서 수정		
		
		if(result == 1) {
			return "redirect:/admin/mall/list";			
		}else {
			model.addAttribute("msg", "제품 삭제에 실패하였습니다.");
			return "admin/common/errorMsg";
		}
	}
	
//-----------------------------------------------------------------------------------------------------
	
	
	
	

	

}
