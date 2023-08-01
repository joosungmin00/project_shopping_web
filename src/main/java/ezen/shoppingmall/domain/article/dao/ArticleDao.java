package ezen.shoppingmall.domain.article.dao;
import java.sql.Connection;
import java.util.List;

import ezen.shoppingmall.domain.article.dto.Memo;

/**
 * 데이터 베이스 게시글 관리 명세
 *  @author 김기정
 */
public interface ArticleDao {
	
	public boolean create(Connection connection, Memo memo);
	
	// 페이징 계산에 필요한 게시글 전체 갯수 반환
	public int getCountAll(Connection connection);
	
	// 요청 페이지, 페이지당 보여지는 목록 갯수에 따른 목록 반환
	public List<Memo> findByAll(Connection connection, int requestPage, int elementSize);
	
	
	
}
