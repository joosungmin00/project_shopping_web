package ezen.shoppingmall.domain.article.dao;
import java.sql.Connection;
import java.util.List;

import ezen.shoppingmall.domain.article.dto.Memo;
import ezen.shoppingmall.domain.article.dto.Reply;

/**
 * 데이터 베이스 게시글 관리 명세
 *  @author 김기정
 */
public interface ReplyDao {
	
	public boolean create(Connection connection, Reply reply);
	
	
	// 요청 페이지, 페이지당 보여지는 목록 갯수에 따른 목록 반환
	public List<Reply> findByAll(Connection connection);
	
	
	
}
