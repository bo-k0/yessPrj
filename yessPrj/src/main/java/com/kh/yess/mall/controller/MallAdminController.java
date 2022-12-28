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
		
		//페이징 처리
		
//		int listCount = ms.pageSelectCount();
		
		
		PageVo pv = new PageVo();
//		String category = Integer.toString(cate);
		
		//제품검색
		Map<String, String> map = new HashMap<>();
		map.put("category", category);
		map.put("search", search);
		
		//제품리스트조회
		List<ProdVo> malllist = ms.selectlist(map, pv);
		
		log.info("카테고리 : " + malllist);
		
		model.addAttribute("malllist", malllist);
		model.addAttribute("pv",pv);
		
		return "admin/mall/list";
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
			return "admin/mall/list";			
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
	public String updateProd(ProdVo vo, HttpServletRequest req) {
		
		log.info(vo.toString());

		long checkImg = vo.getProdImg().get(0).getSize();

		List<AttachmentVo> imglist = null;
		if(checkImg != 0) {
			log.info("inner if"+checkImg);
			imglist = FileUploader.upload(req, vo);
		}
		log.info("outer if"+checkImg);
//		
//		log.debug(imglist.toString());
		
		//상품정보수정
		int result = mas.updateProd(vo, imglist);
		
		if(result == 1) {
			return "admin/mall/list";			
		}else {
			return "admin/mall/updateProd";
		}
	}
	
//-----------------------------------------------------------------------------------------------------
	
	
	
	

	

}
