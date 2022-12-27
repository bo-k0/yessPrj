package com.kh.yess.community.vo;

import java.sql.Date;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class BoardVo {
	
	public String no;
	public String memberNo;
	public String category;
	public String title;
	public String content;
	public Date enrollDate;
	public String deleteYn;
	public String modifyDate;
	public String hit;
	public String pickYn;
	private String like;
	public String hashTag;
	private List<MultipartFile> prodImg;

	
	public String name;
	public String nick;
	//public String gName; 나중에 회원 등급 조인해서 이름 넣기
	
	public boolean isEmpty() {
		
		if(prodImg.get(0).isEmpty()) {return true;}
		if(prodImg == null) return true;
		if(prodImg.size() == 0) return true;
			
		return false;
		
	}//method
	

}
