package ezen.shoppingmall.domain.product.service;

import java.util.List;

import ezen.shoppingmall.domain.product.dto.Product;

/**
 * 제품 관리 비즈니스 로직 및 트랜잭션 관리 위한 명세
 * @author 윤동진
 *
 */
public interface ProductService {
	//전체 제품 목록
	public List<Product> getProduct();
	
	//제품 번호로 조회된 제품
	public Product findProduct(String product_id);
}
