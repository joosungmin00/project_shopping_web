package ezen.shoppingmall.web.work.customer.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ezen.shoppingmall.domain.common.factory.ServiceFactory;
import ezen.shoppingmall.domain.customer.dto.Customer;
import ezen.shoppingmall.domain.customer.service.CustomerService;
import ezen.shoppingmall.web.mvc.controller.HttpController;

public class CustomerSigninController implements HttpController {

		private CustomerService customerService = ServiceFactory.getInstance().getCustomerService();
	@Override
	public String process(Map<String, String> paramMap, Map<String, Object> model, HttpServletRequest request,HttpServletResponse response) {
		String viewName = "redirect:/";
		//로그인 Post요청
		if(request.getMethod().equalsIgnoreCase("post")) {
			String loginId = paramMap.get("id");
			String loginPasswd = paramMap.get("pw");
			String saveId = paramMap.get("saveid");
			
			Customer loginCustomer = customerService.isCustomer(loginId, loginPasswd);
			// 회원인 경우
			if(loginCustomer != null){
				// 세션에 로그인정보 저장
				request.getSession().setAttribute("loginCustomer",loginCustomer);
				// 아이디 저장 체크 시 쿠키 생성
				if(saveId != null){
					Cookie saveCookie;
					try {
						saveCookie = new Cookie("saveid", URLEncoder.encode(loginCustomer.getId(), "utf-8"));
						saveCookie.setPath("/");
						saveCookie.setMaxAge(60*60*24*100);
						response.addCookie(saveCookie);
					} catch (UnsupportedEncodingException e) {
						e.printStackTrace();
					}
				}	
			}
		}else { // 로그아웃 요청 (GET)
			// 세션 삭제
			request.getSession().invalidate();
		}
		return viewName;
	}
}
