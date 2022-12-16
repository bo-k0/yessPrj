package com.kh.yess.common.mypage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("mypage")
@Controller
public class MyCommunityController {
	
	@GetMapping("community")
	public String main() {
		return "mypage/community";
	}

}
