package ezen.shoppingmall.web.work.cart.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ezen.shoppingmall.domain.common.factory.ServiceFactory;
import ezen.shoppingmall.domain.product.dto.Product;
import ezen.shoppingmall.domain.product.service.ProductService;
import ezen.shoppingmall.web.mvc.controller.HttpController;

public class CartController implements HttpController {

	private ProductService productService;

	public CartController() {
	}

	public CartController(ProductService productService) {
		this.productService = productService;
	}

	@Override
	public String process(Map<String, String> paramMap, Map<String, Object> model, HttpServletRequest request,
			HttpServletResponse response) {
		String viewName = null;
		// 장바구니 담기 요청 처리
		String productIdStr = paramMap.get("productId");
		String quantity = paramMap.get("quantity");
		if (quantity == null) {
			quantity = "0";
		}

		if (productIdStr != null) {
			String productId = productIdStr;
			int productQuantity = Integer.parseInt(quantity);

			productService = ServiceFactory.getInstance().getProductService();
			Product product = productService.findProduct(productId);
			product.setQuantity(productQuantity);

			Cart memberCart = (Cart) request.getSession().getAttribute("cart");
			if (memberCart == null) {

				memberCart = new Cart();
				request.getSession().setAttribute("cart", memberCart);
			}
			memberCart.addProduct(product);
			return "redirect:cart";

		} else {
			viewName = "error/error";
		}
			return "cart/cart";
	}
}