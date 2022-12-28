package com.kh.yess.community.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.kh.yess.community.vo.BoardAttachmentVo;
import com.kh.yess.community.vo.BoardVo;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class CommFileUploader {
	
	
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
