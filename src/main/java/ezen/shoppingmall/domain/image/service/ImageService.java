package ezen.shoppingmall.domain.image.service;

import java.util.List;

import ezen.shoppingmall.domain.image.dto.Image;

/**
 * 제품 이미지 관리 비즈니스 로직 및 트랜잭션 관리 위한 명세
 * @author 윤동진
 *
 */
public interface ImageService {
	// product_id로 검색 된 이미지 가져오기
	public List<Image> getImage(String product_id);
}
