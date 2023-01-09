package com.kh.yess.mall.controller;

import java.util.ArrayList;
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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.yess.common.PageVo;
import com.kh.yess.mall.service.MallService;
import com.kh.yess.mall.vo.AttachmentVo;
import com.kh.yess.mall.vo.CartVo;
import com.kh.yess.mall.vo.OrderVo;
import com.kh.yess.mall.vo.ProdVo;
import com.kh.yess.mall.vo.ReviewVo;
import com.kh.yess.member.vo.MemberVo;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("mall")
@Slf4j
public class MallController {
	
	@Autowired private MallService ms;
	
	//예스몰 상품리스트 화면
	@GetMapping("list")
	public String list(@RequestParam(defaultValue = "1")int p,//페이지 번호
						@RequestParam(required = false)String category, //검색기능 구분 
						@RequestParam(value="search", required = false)String search,//검색기능이름
						Model model) {
		
		//페이징 처리
		
		int listCount = ms.pageSelectCount();
		
		PageVo pv = new PageVo();
//		String category = Integer.toString(cate);
		
		
		//제품검색
		Map<String, String> map = new HashMap<>();
		map.put("category", category);
		map.put("search", search);
		
		//제품리스트조회
		List<ProdVo> malllist = ms.selectlist(map, pv);
				
		model.addAttribute("malllist", malllist);
		model.addAttribute("pv",pv);
		
		return "mall/list";
	}
	
	
//---------------------------------------------------------------------
	
	
	
	
//---------------------------------------------------------------------
	
	
	//제품상세조회
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
		
		log.debug(prodImglist.toString());
		
		return "mall/detail";
	}
	
	
//---------------------------------------------------------------------
	

	//리뷰작성
	@GetMapping("reviewwrite")
	public String reviewwrite(int no, Model model, HttpServletRequest request) {
		
		model.addAttribute("no", no);
		
		return "mall/reviewwrite";
	}
	
	@PostMapping("reviewwrite")
	public String reviewwrite(int no, ReviewVo rv, HttpSession session) {
		
		MemberVo loginMember = (MemberVo) session.getAttribute("loginMember");
		rv.setMemberNo(loginMember.getNo());
		rv.setProdNo(no);
		
		int result = ms.writeRv(rv);
		System.out.println("result : " + result);
		if(result == 1) {
			return "redirect:/mall/detail?no=" + no; //나중에 그 상품페이지로 변경			
		} else {
			return "redirect:/mall/list";
		}
		
	}
	
	
	//리뷰상세조회
	@GetMapping("rvDetail")
	public String rvDetail(int rno, Model model, int pno) {
		
		ReviewVo rvo = ms.selectRv(rno);
		
		//어떤 상품에 대한 리뷰인지 상품 정보 게시
		ProdVo pvo = ms.selectProd(pno);
		List<AttachmentVo> prodImglist = ms.selectProdImg(pno);
		
		model.addAttribute("pvo",pvo);
		model.addAttribute("prodImglist",prodImglist);
		model.addAttribute("rvo",rvo);
		
		return "mall/rvDetail";
	}
	
	//리뷰수정
	@GetMapping("updateRv")
	public String updateRv(int rno, Model model, HttpSession session) {
		
		MemberVo loginMember = (MemberVo) session.getAttribute("loginMember");
		
		//리뷰조회
		ReviewVo rvo = ms.selectRv(rno);
		
		model.addAttribute("rvo",rvo);
		
		return "mall/updateRv";
	}
	
	@PostMapping("updateRv")
	public String updateRv(ReviewVo rvo, Model model) {
		
		int result = ms.updateRv(rvo);
		
		if(result == 1) {
			return "redirect:/mall/rvDetail?rno=" + rvo.getRvNo() + "&pno=" + rvo.getProdNo();			
		}else {
			model.addAttribute("msg", "제품 정보 수정에 실패하였습니다.");
			return "admin/common/errorMsg";
		}
	}
	
	//리뷰 삭제
	@PostMapping("deleteRv")
	public String deleteRv(int rvNo, Model model) {
		
		int result = ms.deleteRv(rvNo);
		
		if(result == 1) {
			return "redirect:/admin/mall/list";	 //시간있을때 상세제품내역으로 바꾸기...		
		}else {
			model.addAttribute("msg", "제품 삭제에 실패하였습니다.");
			return "admin/common/errorMsg";
		}
		
	}
	
	
//---------------------------------------------------------------------
	
	//장바구니 제품 추가
	@ResponseBody
	@PostMapping("addCart")
	public String addCart(CartVo cart, HttpSession session) {
		
		MemberVo loginMember = (MemberVo) session.getAttribute("loginMember");
		cart.setMemberNo(loginMember.getNo());
		
		//장바구니등록
		int result = ms.addCart(cart);
		
		return result+"";
		
	}
	
	//장바구니 목록 조회
	@GetMapping("cart")
	public String cart(Model model, HttpSession session) {
		
		MemberVo loginMember = (MemberVo) session.getAttribute("loginMember");
		
		List<CartVo> cartList = ms.showCart(loginMember.getNo());
		
		model.addAttribute("cartList",cartList);
		
		return "mall/cart";
	}
	
	
	
	//장바구니 내에서 수량조절
	@ResponseBody
	@PostMapping("changeCnt")
	public String changeCnt(CartVo cart, HttpSession session) {
		
		log.info(cart.toString());
		int result = ms.changeCnt(cart);
		
		return result+"";
		
	}
	
//---------------------------------------------------------------------
	
	//찜목록 제품 추가
	@ResponseBody
	@PostMapping("addZzim")
	public String addZzim(CartVo prod, HttpServletRequest request) {
		
		
		//찜등록
		int result = ms.addZzim(prod);
		
		return result+"";
	}
	
	
	
	//찜 목록 조회
	@GetMapping("zzim")
	public String zzim(Model model, HttpSession session) {
		
		MemberVo loginMember = (MemberVo) session.getAttribute("loginMember");
		
	
		List<CartVo> zzimList = ms.showZzim(loginMember.getNo());
		
		model.addAttribute("zzimList", zzimList);
		
		return "mall/zzim";
	}

	//찜목록 제품 삭제
	@PostMapping("deleteZzim")
	public String deleteZzim(int no, Model model, HttpSession session) {
		
		MemberVo loginMember = (MemberVo) session.getAttribute("loginMember");
		CartVo prod = new CartVo();
		prod.setMemberNo(loginMember.getNo());
		prod.setProdNo(no);
		
		int result = ms.deleteZzim(prod);
		
		if(result == 1) {
			model.addAttribute("msg","찜목록에서 삭제하였습니다.");
			return "redirect:/mall/zzim";			
		}else {
			model.addAttribute("msg", "찜 삭제에 실패하였습니다.");
			return "admin/common/errorMsg";
		}
	}

	
//---------------------------------------------------------------------
	
	//주문정보화면
	@GetMapping("order")
	public String order(HttpSession session, int[] check,int totalPrice, Model model) {
		
		MemberVo loginMember = (MemberVo) session.getAttribute("loginMember");
		for(int i = 0;i<check.length;i++) {
			log.info(i+"번째 상품 : "+check[i]);
		}
		
		List<CartVo> orderList = ms.order(check, loginMember.getNo());
		log.info("리스트 제품 목록 : " + orderList.toString());
		
		
		OrderVo orderVo = new OrderVo();
		orderVo.setSumPrice(totalPrice-3000);
		
		model.addAttribute("orderVo",orderVo);
		model.addAttribute("orderList", orderList);
		model.addAttribute("totalPrice", totalPrice);
		return "mall/order";
	}

	//결제완료시 (결제테이블에 결제정보 삽입)
	//주의할 점 : 장바구니 제품 삭제 + 결제정보삽입 + 주문정보삽입 3가지 인서트가 모두 이루어지는게 한가지 작업임. Transaction이용하기
	
	@GetMapping("orderdetail")
	public String orderdatail() {
		return "mall/orderdetail";
	}
	
	
//---------------------------------------------------------------------
	@GetMapping("end")
	public String end() {
		return "mall/end";
	}
	
	@GetMapping("deposit")
	public String deposit() {
		return "mall/deposit";
	}
}
