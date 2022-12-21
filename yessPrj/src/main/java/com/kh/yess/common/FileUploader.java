package com.kh.yess.common;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

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

}
