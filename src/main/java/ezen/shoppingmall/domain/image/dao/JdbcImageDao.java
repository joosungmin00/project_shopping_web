package ezen.shoppingmall.domain.image.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import ezen.shoppingmall.domain.image.dto.Image;

/**
 * 이미지 관리 구현체
 * @author 윤동진
 *
 */
public class JdbcImageDao implements ImageDao{

	@Override
	public List<Image> findImage(Connection connection,String product_id) {
		List<Image> list = null;
		Image image = null;
		StringBuilder sb = new StringBuilder();
		sb.append(" SELECT i.product_id,")
		  .append(" 	   path,")
		  .append("		   img_desc")
		  .append("		   FROM image i")
		  .append("		   JOIN product p")
		  .append("		   ON")
		  .append("		   i.product_id = p.product_id")
		  .append(" WHERE  p.product_id = ?");
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = connection.prepareStatement(sb.toString());
			pstmt.setString(1, product_id);
			rs = pstmt.executeQuery();
			list = new ArrayList<Image>();
			while (rs.next()) {
				image = new Image();
				String productId = rs.getString("product_id");
				String path = rs.getString("path");
				String imgDesc = rs.getString("img_desc");
				
				image.setProduct_id(productId);
				image.setPath(path);
				image.setImg_desc(imgDesc);
				list.add(image);
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

}
