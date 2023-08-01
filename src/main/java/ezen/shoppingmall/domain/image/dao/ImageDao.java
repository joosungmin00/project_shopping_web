package ezen.shoppingmall.domain.image.dao;

import java.sql.Connection;
import java.util.List;

import ezen.shoppingmall.domain.image.dto.Image;

/**
 * 이미지 관리 명세
 * @author 윤동진
 *
 */
public interface ImageDao {
	public List<Image> findImage(Connection connection, String product_id);
}
