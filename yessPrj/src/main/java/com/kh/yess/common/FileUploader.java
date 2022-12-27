package com.kh.yess.common;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.multipart.MultipartFile;

import com.kh.yess.community.vo.BoardAttachmentVo;
import com.kh.yess.community.vo.BoardVo;
import com.kh.yess.mall.vo.AttachmentVo;
import com.kh.yess.market.vo.MarketAttachmentVo;
import com.kh.yess.mall.vo.ProdVo;
import com.kh.yess.market.vo.MarketVo;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class FileUploader {
	
	
	//파일업로드 (수업내용)
//		public static String upload(MemberVo vo, HttpServletRequest req) {
//
//			String path = req.getSession().getServletContext().getRealPath("/resources/upload/");
//			String originName = vo.getProfile().get(0).getOriginalFilename();
//			String ext = originName.substring(originName.lastIndexOf("."),originName.length());
//			String changeName = "profile_" + System.nanoTime() + ext; //profile_현재시간
//
//			File target = new File(path + changeName);
//
//			try {
//				vo.getProfile().get(0).transferTo(target);
//			} catch (Exception e) {
//				e.printStackTrace();
//			}
//
//			return changeName;
//		}
	
	//mall파일업로드
	public static List<AttachmentVo> upload(HttpServletRequest req, ProdVo vo) {
		
		List<AttachmentVo> avolist = new ArrayList<AttachmentVo>();
		AttachmentVo avo = null;
		
		String path = req.getSession().getServletContext().getRealPath("/resources/upload/mall/");
		
		for(int i = 0; i < vo.getProdImg().size(); i++) {
			avo = new AttachmentVo();
			String originName = vo.getProdImg().get(i).getOriginalFilename();
			String ext = originName.substring(originName.lastIndexOf("."),originName.length());
			String changeName = "img" + System.nanoTime() + ext;
			
			avo.setOriginName(originName);
			avo.setChangeName(changeName);
			
			File target = new File(path +  changeName);
			avo.setFilePath(path);
			
			avolist.add(avo);
			
			try {
				vo.getProdImg().get(i).transferTo(target);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
				
		return avolist;
	}
	
	//market파일업로드
	public static List<MarketAttachmentVo> marketUpload(HttpServletRequest req, MarketVo vo) {
		
		List<MarketAttachmentVo> marketImgList = new ArrayList<MarketAttachmentVo>();
		MarketAttachmentVo marketImg = null;
		
		String path = req.getSession().getServletContext().getRealPath("/resources/upload/market/");
		
		for(int i = 0; i < vo.getMarketImg().size(); i++) {
			if(vo.getMarketImg().get(i).getOriginalFilename() == "") {break;}
			marketImg = new MarketAttachmentVo();
			String originName = vo.getMarketImg().get(i).getOriginalFilename();
			String ext = originName.substring(originName.lastIndexOf("."),originName.length());
			String changeName = "img" + System.nanoTime() + ext;
			
			marketImg.setOriginName(originName);
			marketImg.setChangeName(changeName);
			
			if(i == 0) {
				marketImg.setThumbYn('Y');
			}else {
				marketImg.setThumbYn('N');
			}
			
			File target = new File(path + changeName);
			marketImg.setFilePath(path);
			
			marketImgList.add(marketImg);
			
			try {
				vo.getMarketImg().get(i).transferTo(target);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		return marketImgList;
	}
	
	//community 파일 업로드
	public static List<BoardAttachmentVo> commUpload(HttpServletRequest req, BoardVo vo) {
		
		List<BoardAttachmentVo> avolist = new ArrayList<BoardAttachmentVo>();
		BoardAttachmentVo avo = null;
		
		String path = req.getSession().getServletContext().getRealPath("/resources/upload/community/");
		
		for(int i = 0; i < vo.getProdImg().size(); i++) {
			avo = new BoardAttachmentVo();
			String originName = vo.getProdImg().get(i).getOriginalFilename();
			String ext = originName.substring(originName.lastIndexOf("."),originName.length());
			String changeName = "img" + System.nanoTime() + ext;
			
			avo.setOriginName(originName);
			avo.setChangeName(changeName);
			
			File target = new File(path +  changeName);
			avo.setFilePath(path);
			
			avolist.add(avo);
			
			try {
				vo.getProdImg().get(i).transferTo(target);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
				
		return avolist;
	}

}
