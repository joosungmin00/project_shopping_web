package ezen.shoppingmall.domain.product.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import ezen.shoppingmall.domain.common.factory.ServiceFactory;
import ezen.shoppingmall.domain.product.dao.ProductDao;
import ezen.shoppingmall.domain.product.dto.Product;

public class ProductServiceImpl implements ProductService {
	
	private DataSource dataSource;
	private ProductDao  productDao;
	
	public ProductServiceImpl(DataSource dataSource, ProductDao productDao) {
		this.dataSource = dataSource;
		this.productDao = productDao;
	}
	
	@Override
	public List<Product> getProduct() {
		List<Product> product = null;
		Connection connection = null;
		try {
			connection = dataSource.getConnection();
			product = productDao.getAllProduct(connection);
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		} finally {
			try {if(connection != null) connection.close();} catch (SQLException e1) {}
		}
		return product;
	}

	@Override
	public Product findProduct(String product_id) {
		Product product = null;
		Connection connection = null;
		try {
			connection = dataSource.getConnection();
			product = productDao.findByProductNum(connection, product_id);
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		} finally {
			try {if(connection != null) connection.close();} catch (SQLException e1) {}
		}
		return product;
	}

	
	
	
	public static void main(String[] args) {
		ServiceFactory serviceFactory = ServiceFactory.getInstance();
		ProductService productService = serviceFactory.getProductService();
		
		List<Product> list = productService.getProduct();
		System.out.println(list);
		
		
	}
}
