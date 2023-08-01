package ezen.shoppingmall.domain.product.dao;

import java.sql.Connection;
import java.util.List;

import ezen.shoppingmall.domain.product.dto.Product;

/**
 * 제품 관리 명세
 * @author 윤동진
 *
 */
public interface ProductDao {
	public List<Product> getAllProduct(Connection connection);
	public Product findByProductNum(Connection connection, String product_id);
	
	
	
}
