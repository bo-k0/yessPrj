package com.kh.yess.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class MypageInterceptor implements HandlerInterceptor{
		// DS -> C
		@Override
		public boolean preHandle(HttpServletRequest req, HttpServletResponse resp, Object handler)
				throws Exception {

			String checked = (String) req.getSession().getAttribute("pwdChecked");
			if(!"check".equals(checked)) {
				log.debug("비번 확인 불가");
				req.getRequestDispatcher("/views/admin/common/errorMsg.jsp").forward(req, resp);
				return false;				
			}
			log.debug("비번 확인");
			return true;
		}

		// C -> DS
		@Override
		public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
				ModelAndView modelAndView) throws Exception {

			log.debug("비번 확인 세션 삭제");
			request.getSession().removeAttribute("pwdChecked");
		}

		// 화면 만든 이후
//		@Override
//		public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
//				throws Exception {
//
//			log.debug("이건 또 언제");
//		}
}
