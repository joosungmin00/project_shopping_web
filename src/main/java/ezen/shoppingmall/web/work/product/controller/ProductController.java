package ezen.shoppingmall.web.work.product.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ezen.shoppingmall.domain.common.factory.ServiceFactory;
import ezen.shoppingmall.domain.product.dto.Product;
import ezen.shoppingmall.domain.product.service.ProductService;
import ezen.shoppingmall.web.mvc.controller.HttpController;

public class ProductController implements HttpController{
	private ProductService productService = ServiceFactory.getInstance().getProductService();
	
	@Override
	public String process(Map<String, String> paramMap, Map<String, Object> model, HttpServletRequest request,	HttpServletResponse response) {
		String viewName ="product/product";
		List<Product> products = productService.getProduct();
		model.put("products", products);
		return viewName;
	}

}
