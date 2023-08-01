package ezen.shoppingmall.domain.product.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import ezen.shoppingmall.domain.product.dto.Product;

/**
 * 제품 관리 명세 구현체
 * @author 윤동진
 */
public class JdbcProductDao implements ProductDao{

	@Override
	public List<Product> getAllProduct(Connection connection) {
		List<Product>  list = null;
		Product product = null;
		StringBuilder sb = new StringBuilder();
		sb.append(" SELECT product_id,")
		  .append(" 	   p_name,")
		  .append("		   stock,")
		  .append("		   price,")
		  .append("		   saleprice,")
		  .append("		   p_desc,")
		  .append("		   p_detaildesc,")
		  .append("		   p_img")
		  .append(" FROM product");
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = connection.prepareStatement(sb.toString());
			rs = pstmt.executeQuery();
			list = new ArrayList<Product>();
			while (rs.next()) {
				String productId = rs.getString("product_id");
				String pName = rs.getString("p_name");
				int stock = rs.getInt("stock");
				int price = rs.getInt("price");
				int salePrice = rs.getInt("saleprice");
				String desc = rs.getString("p_desc");
				String detailDesc = rs.getString("p_detaildesc");
				String pImg = rs.getString("p_img");
				
				product = new Product();
				product.setProduct_id(productId);
				product.setP_name(pName);
				product.setStock(stock);
				product.setPrice(price);
				product.setSaleprice(salePrice);
				product.setP_desc(desc);
				product.setP_detaildesc(detailDesc);
				product.setP_img(pImg);
				list.add(product);
			}
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		} finally {
			try {
				if (rs != null) rs.close();
				if (pstmt != null) pstmt.close();
			} catch (Exception e) {}
		}
		return list;
	}

	@Override
	public Product findByProductNum(Connection connection, String product_id) {
		Product product = null;
		StringBuilder sb = new StringBuilder();
		sb.append(" SELECT product_id,")
		  .append(" 	   p_name,")
		  .append("		   stock,")
		  .append("		   price,")
		  .append("		   saleprice,")
		  .append("		   p_desc,")
		  .append("		   p_detaildesc,")
		  .append("		   p_img")
		  .append(" FROM product")
		  .append(" WHERE product_id = ?");
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = connection.prepareStatement(sb.toString());
			pstmt.setString(1, product_id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				product = new Product();
				String productId = rs.getString("product_id");
				String pName = rs.getString("p_name");
				int stock = rs.getInt("stock");
				int price = rs.getInt("price");
				int salePrice = rs.getInt("saleprice");
				String desc = rs.getString("p_desc");
				String detailDesc = rs.getString("p_detaildesc");
				String pImg = rs.getString("p_img");
				
				product.setProduct_id(productId);
				product.setP_name(pName);
				product.setStock(stock);
				product.setPrice(price);
				product.setSaleprice(salePrice);
				product.setP_desc(desc);
				product.setP_detaildesc(detailDesc);
				product.setP_img(pImg);
			}
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		} finally {
			try {
				if (rs != null) rs.close();
				if (pstmt != null) pstmt.close();
			} catch (Exception e) {}
		}
		return product;
	}


	
	
}
