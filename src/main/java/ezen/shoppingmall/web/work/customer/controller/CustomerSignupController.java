package ezen.shoppingmall.web.work.customer.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ezen.shoppingmall.domain.common.factory.ServiceFactory;
import ezen.shoppingmall.domain.customer.dto.Customer;
import ezen.shoppingmall.domain.customer.service.CustomerService;
import ezen.shoppingmall.web.mvc.controller.HttpController;

public class CustomerSignupController implements HttpController{
	
	private CustomerService customerService = ServiceFactory.getInstance().getCustomerService();

	@Override
	public String process(Map<String, String> paramMap, Map<String, Object> model, HttpServletRequest request,HttpServletResponse response) {
		String viewName = null;
		// 회원가입 요청 (get)
		if(request.getMethod().equalsIgnoreCase("get")) {
			viewName = "member/signup";
		}else { //(post) 요청의 경우
			viewName = "member/signup-result";
			String customerId = paramMap.get("customerId");
			String id = paramMap.get("id");
			String name = paramMap.get("name");
			String pw = paramMap.get("pw");
			String email = paramMap.get("email");
			Customer customer = new Customer(customerId,id,name,pw,email,null);
			//반환받은 customer 객체에는 가입일자 정보 포함
			customer = customerService.registerCustomer(customer);
			//모델에 회원정보 저장
			model.put("customer", customer);
		}
		
		return viewName;
	}

}
