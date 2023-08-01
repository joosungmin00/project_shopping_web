package ezen.shoppingmall.web.mvc.adapter;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ezen.shoppingmall.web.mvc.controller.ModelAndView;

/**
 * 핸들러 어댑터 명세
 */
public interface MyHandlerAdapter {
	
	/**
	 * 어댑터가 해당 컨트롤러를 처리할 수 있는지 판단
	 */
	boolean supports(Object handler);
	
	/**
	 * 어댑터는 세부 컨트롤러를 호출하고, 그 결과로 프론트컨트럴러에 ModelView를 반환해야 한다.
	 * 세부 컨트롤러가 ModelView를 반환하지 못하면, ModelView를 직접 생성해서 반환한다.
	 */
	ModelAndView handle(HttpServletRequest request, HttpServletResponse response, Object handler) throws ServletException, IOException;

}








