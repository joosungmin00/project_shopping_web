package ezen.shoppingmall.domain.article.service;

import java.util.List;
import ezen.shoppingmall.domain.article.dto.Memo;
import ezen.shoppingmall.domain.article.dto.Reply;
import ezen.shoppingmall.web.common.page.PageParams;

/**
 * 방명록 관련 비즈니스 로직 처리 및 트랜잭션 관리를 위한 명세
 */
public interface ReplyService {
	/** 신규 방명록 등록 */
	public void writeReply(Reply reply);
	
	public List<Reply> getRepliesByMemoId();
	
}
