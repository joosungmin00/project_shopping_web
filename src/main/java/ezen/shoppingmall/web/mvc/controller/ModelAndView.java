package ezen.shoppingmall.web.mvc.controller;

import java.util.HashMap;
import java.util.Map;

/**
 * Model과 논리 뷰이름 저장
 * 
 * @author 김기정
 */
public class ModelAndView {
	
	// 논리적 뷰 이름
	private String viewName;
	
	private Map<String, Object> model = new HashMap<String, Object>();

	public ModelAndView(String viewName) {
		this.viewName = viewName;
	}

	public String getViewName() {
		return viewName;
	}

	public void setViewName(String viewName) {
		this.viewName = viewName;
	}

	public Map<String, Object> getModel() {
		return model;
	}

	public void setModel(Map<String, Object> model) {
		this.model = model;
	}

	@Override
	public String toString() {
		return "ModelAndView [viewName=" + viewName + ", model=" + model + "]";
	}
}
