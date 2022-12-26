package com.kh.yess.common;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

import com.kh.yess.mall.vo.AttachmentVo;
import com.kh.yess.mall.vo.ProdVo;

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

}
