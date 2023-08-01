package ezen.shoppingmall.web.mvc.controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ezen.shoppingmall.web.mvc.adapter.BasicControllerHandlerAdapter;
import ezen.shoppingmall.web.mvc.adapter.HttpControllerHandlerAdapter;
import ezen.shoppingmall.web.mvc.adapter.MyHandlerAdapter;
import ezen.shoppingmall.web.mvc.adapter.RestControllerHandlerAdapter;
import ezen.shoppingmall.web.mvc.adapter.WebControllerHandlerAdapter;
import ezen.shoppingmall.web.mvc.view.MyView;

/**
 * 프론트 컨트롤러 구현
 */
@WebServlet(name = "/dispatcherServlet", urlPatterns = { "/mall/*" })
public class DispatcherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private final Map<String, Object> handlerMappingMap = new HashMap<String, Object>();
	private final List<MyHandlerAdapter> handlerAdapters = new ArrayList<MyHandlerAdapter>();

	@Override
	public void init() throws ServletException {
		initHandlerMappingMap();
		initHandlerAdapters();
	}

	@SuppressWarnings("deprecation")
	private void initHandlerMappingMap() {
		String contextPath = getServletContext().getContextPath();
		Properties prop = new Properties();
		InputStream in = getClass().getResourceAsStream("/config/request-mappting.properties");
		try {
			prop.load(in);
			Set<Object> keys = prop.keySet();
			Iterator<Object> iter = keys.iterator();
			while (iter.hasNext()) {
				String requestURL = (String)iter.next();
				String handlerClass = prop.getProperty(requestURL);
				Object handler = Class.forName(handlerClass).newInstance();
				handlerMappingMap.put(contextPath + getServletContext().getAttribute("path") + requestURL, handler);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}


	private void initHandlerAdapters() {
		handlerAdapters.add(new BasicControllerHandlerAdapter());
		handlerAdapters.add(new WebControllerHandlerAdapter());
		handlerAdapters.add(new HttpControllerHandlerAdapter());
		handlerAdapters.add(new RestControllerHandlerAdapter());
	}

	/**
	 * 웹 브라우저 모든 요청 처리
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 핸들러 선택
		Object handler = getHandler(request);

		if (handler == null) {
			response.setStatus(HttpServletResponse.SC_NOT_FOUND);
			return;
		}

		// 어댑터 선택
		MyHandlerAdapter adapter = getHandlerAdapter(handler);
		ModelAndView mav = adapter.handle(request, response, handler);
		if(mav == null) return;

		// 뷰 선택
		String viewName = mav.getViewName();
		if(viewName.startsWith("redirect:")) {
			// 리다이렉트
			response.sendRedirect(viewName.substring(viewName.indexOf(":")+1));			
		}else {
			// 포워드
			MyView view = viewResolve(mav.getViewName());
			view.render(mav.getModel(), request, response);
		}
	}

	private Object getHandler(HttpServletRequest request) {
		String requestURI = request.getRequestURI();
		return handlerMappingMap.get(requestURI);
	}

	private MyHandlerAdapter getHandlerAdapter(Object handler) {
		for (MyHandlerAdapter adapter : handlerAdapters) {
			if (adapter.supports(handler)) {
				return adapter;
			}
		}
		throw new IllegalArgumentException("HandlerAdapter를 찾을 수 없습니다. Handler = " + handler);
	}

	private Map<String, String> createParamMap(HttpServletRequest request) {
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
		}

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

	private MyView viewResolve(String viewName) {
		return new MyView("/WEB-INF/views/" + viewName + ".jsp");
	}
}
