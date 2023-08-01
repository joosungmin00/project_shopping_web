package ezen.shoppingmall.web.work.cart.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

import ezen.shoppingmall.web.mvc.controller.RestController;

public class CartListController implements RestController {
    private ObjectMapper objectMapper = new ObjectMapper();
  
  
	@Override
	public void process(Map<String, String> paramMap, HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	}
}