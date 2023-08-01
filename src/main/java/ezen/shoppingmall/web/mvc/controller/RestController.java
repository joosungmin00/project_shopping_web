package ezen.shoppingmall.web.mvc.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 세부 컨트롤러 명세(역할)
 * @author 김기정
 */
public interface RestController {
	public void process(Map<String, String> paramMap, HttpServletRequest request, HttpServletResponse response);
}


