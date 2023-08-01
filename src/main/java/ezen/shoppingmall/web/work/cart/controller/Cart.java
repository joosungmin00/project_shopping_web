package ezen.shoppingmall.web.work.cart.controller;

import java.util.Hashtable;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import ezen.shoppingmall.domain.product.dto.Product;

public class Cart {
	private String memberId;

	private Map<String, Product> list;

	public Cart() {
		list = new Hashtable<String, Product>();
	}

	public Map<String, Product> getList() {
		return list;
	}

	public void setList(Map<String, Product> list) {
		this.list = list;
	}

	// 장바구니 담기
	public void addProduct(Product product) {
		// 담기전에 존재여부 확인

		if (exist(product.getProduct_id())) {
			// 기존 상품의 수량만 증가시킨다.
			Product existProduct = list.get(product.getProduct_id());
			existProduct.setQuantity(existProduct.getQuantity() + product.getQuantity());
		} else {
			list.put(product.getProduct_id(), product);
		}
	}

	private boolean exist(String productId) {
		return list.containsKey(productId);
	}

	public void cleanProduct() {

	}

	// 장바구니 상품 JSON으로
	// 장바구니에 담긴 상품 정보를 JSON 형식으로 반환
	public String getCartItemsAsJson() throws JsonProcessingException {
		ObjectMapper objectMapper = new ObjectMapper();
		return objectMapper.writeValueAsString(list.values());
	}
	// 장바구니에서 상품 검색
	// 장바구니에서 특정 상품 제거

	// 장바구니에서 상품 제거
	public void removeProduct(String productId, HttpServletRequest request) {
		// 컬렉션 (Cart)에서 상품 제거
		list.remove(productId);

		// 세션에서도 상품 제거
		HttpSession session = request.getSession();
		session.removeAttribute(productId);
	}

	// 컬렉션 가져오기
	public Map<String, Product> getProducts() {
		return list;
	}

}
