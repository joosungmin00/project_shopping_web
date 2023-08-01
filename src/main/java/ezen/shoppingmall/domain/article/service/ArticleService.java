package ezen.shoppingmall.domain.article.service;

import java.util.List;
import ezen.shoppingmall.domain.article.dto.Memo;
import ezen.shoppingmall.web.common.page.PageParams;

/**
 * 방명록 관련 비즈니스 로직 처리 및 트랜잭션 관리를 위한 명세
 */
public interface ArticleService {
	/** 신규 방명록 등록 */
	public void writeArticle(Memo memo);
	
	/** 전체 방명록 개수 반환 */
	public int getAticleCount();	
	/* 요청 페이지, 페이지당 보여지는 목록 갯수에 따른 방명록 목록 반환 */
	public List<Memo> getArticles(PageParams params);
	
}
