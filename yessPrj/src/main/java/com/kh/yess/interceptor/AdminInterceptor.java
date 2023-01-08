package com.kh.yess.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.kh.yess.member.vo.MemberVo;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class AdminInterceptor implements HandlerInterceptor{
		// DS -> C
		@Override
		public boolean preHandle(HttpServletRequest req, HttpServletResponse resp, Object handler)
				throws Exception {

			MemberVo vo = (MemberVo) req.getSession().getAttribute("adminMember");
			if(vo == null  || vo.getGradeNo() != 9) {
				log.debug("첫번째 관리자 권한 없음");
				req.getRequestDispatcher("/views/admin/common/errorMsg.jsp").forward(req, resp);
				return false;				
			}
			log.debug("관리자 허용");
			return true;
		}

//		// C -> DS
//		@Override
//		public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
//				ModelAndView modelAndView) throws Exception {
//
//		}
//
//		// 화면 만든 이후
//		@Override
//		public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
//				throws Exception {
//
//		}
}
