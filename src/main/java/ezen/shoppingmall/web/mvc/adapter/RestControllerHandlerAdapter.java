package ezen.shoppingmall.web.mvc.adapter;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ezen.shoppingmall.web.mvc.controller.BasicController;
import ezen.shoppingmall.web.mvc.controller.HttpController;
import ezen.shoppingmall.web.mvc.controller.ModelAndView;
import ezen.shoppingmall.web.mvc.controller.RestController;
import ezen.shoppingmall.web.mvc.controller.WebController;

public class RestControllerHandlerAdapter implements MyHandlerAdapter { 

	@Override
	public boolean supports(Object handler) {
		return handler instanceof RestController;
	}

	@Override
	public ModelAndView handle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws ServletException, IOException {
		RestController controller = (RestController) handler;
		Map<String, String> paramMap = createParamMap(request);
		
		controller.process(paramMap, request, response);
		return null;
	}

	private Map<String, String> createParamMap(HttpServletRequest request) {

		Map<String, String> paramMap = new HashMap<String, String>();
		Enumeration<String> e = request.getParameterNames();
		Iterator<String> iter = e.asIterator();
		while (iter.hasNext()) {
			String paramName = iter.next();
			String paramValue = request.getParameter(paramName);
			paramMap.put(paramName, paramValue);
		}
		return paramMap;
	}

}
