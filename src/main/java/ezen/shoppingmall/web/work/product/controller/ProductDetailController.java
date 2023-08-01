package ezen.shoppingmall.web.work.product.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ezen.shoppingmall.domain.common.factory.ServiceFactory;
import ezen.shoppingmall.domain.image.dto.Image;
import ezen.shoppingmall.domain.image.service.ImageService;
import ezen.shoppingmall.domain.product.dto.Product;
import ezen.shoppingmall.domain.product.service.ProductService;
import ezen.shoppingmall.web.mvc.controller.HttpController;

public class ProductDetailController implements HttpController {

	private ProductService productService = ServiceFactory.getInstance().getProductService();
	private ImageService imageService = ServiceFactory.getInstance().getImageService();

	@Override
	public String process(Map<String, String> paramMap, Map<String, Object> model, HttpServletRequest request,
			HttpServletResponse response) {
		String viewName = null;
		String productIdStr = paramMap.get("productId");
		
		if (productIdStr != null) {
			List<Image> images = imageService.getImage(productIdStr);
			model.put("images",images);
			Product product = productService.findProduct(productIdStr);
			model.put("product", product);
			viewName = "product/productdetail";
			
		}else {
			viewName = "error/error";
		}
		return viewName;
	}

}
