package ezen.shoppingmall.web.work.cart.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

import ezen.shoppingmall.web.mvc.controller.RestController;

public class CartRemoveController implements RestController {
    private ObjectMapper objectMapper = new ObjectMapper();

    @Override
    public void process(Map<String, String> paramMap, HttpServletRequest request, HttpServletResponse response) {
        try {
            String productId = paramMap.get("productId");
            if (productId != null) {
                Cart memberCart = (Cart) request.getSession().getAttribute("cart");
                if (memberCart != null) {
                    memberCart.removeProduct(productId, request);
                }
            } else {
                // Handle the case when productId is null
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    
    // 장바구니 목록을 JSON 형식으로 반환하는 API
    public void getCartList(HttpServletRequest request, HttpServletResponse response) {
        Cart memberCart = (Cart) request.getSession().getAttribute("cart");
        if (memberCart != null) {
             objectMapper = new ObjectMapper();
            try {
                response.setContentType("application/json");
                objectMapper.writeValue(response.getWriter(), memberCart.getProducts());
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
    
    
    
    
}