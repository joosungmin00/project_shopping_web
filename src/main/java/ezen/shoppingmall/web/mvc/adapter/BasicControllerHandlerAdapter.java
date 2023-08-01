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
import ezen.shoppingmall.web.mvc.controller.ModelAndView;

public class BasicControllerHandlerAdapter implements MyHandlerAdapter {

	@Override
	public boolean supports(Object handler) {
		return handler instanceof BasicController;
	}

	@Override
	public ModelAndView handle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws ServletException, IOException {
		BasicController controller = (BasicController) handler;
		Map<String, String> paramMap = createParamMap(request);
		ModelAndView mav = controller.process(paramMap);
		return mav;
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
