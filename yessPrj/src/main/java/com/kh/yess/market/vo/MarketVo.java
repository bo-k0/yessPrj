package com.kh.yess.market.vo;

import java.sql.Timestamp;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.kh.yess.mall.vo.AttachmentVo;

import lombok.Data;

@Data
public class MarketVo{

	private int no;
	private int memberNo;
	private String nick; //private int memberNo;
	private String title;
	private int marketTypeNo;
	private String marketType; //int marketTypeNo;
	private String objectName;
	private String objectInfo;
	private String tradeMethod;
	private String objectPs;
	private String enrollDate;
	private char deleteYn;
	private String modifyDate;
	private int hit;
	private String tradeYn;
	private String changeName; //marketAttachment
	
	private int cmtCnt;
	private String cmtDate;
	private String secretYn;
	private String cmt;
	
	
	private List<MarketAttachmentVo> changeNameList;
	
	private List<MultipartFile> marketImg; //private String changeName;
	
	public boolean isEmpty() {
		
		if(marketImg.get(0).isEmpty()) {return true;}
		if(marketImg == null) return true;
		if(marketImg.size() == 0) return true;
		
		return false;
		
	}
	
	
}
