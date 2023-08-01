package ezen.shoppingmall.domain.common.factory;

import ezen.shoppingmall.domain.article.dao.ArticleDao;
import ezen.shoppingmall.domain.article.dao.JdbcArticleDao;
import ezen.shoppingmall.domain.article.dao.JdbcReplyDao;
import ezen.shoppingmall.domain.article.dao.ReplyDao;
import ezen.shoppingmall.domain.customer.dao.CustomerDao;
import ezen.shoppingmall.domain.customer.dao.JdbcCustomerDao;
import ezen.shoppingmall.domain.image.dao.ImageDao;
import ezen.shoppingmall.domain.image.dao.JdbcImageDao;
import ezen.shoppingmall.domain.product.dao.JdbcProductDao;
import ezen.shoppingmall.domain.product.dao.ProductDao;

/**
 * Simple Factory 적용
 */
public class DaoFactory {

	private static DaoFactory instance = new DaoFactory();

	private DaoFactory() {
	}

	public static DaoFactory getInstance() {
		return instance;
	}

	// CustomerDao 구현체 반환
	public CustomerDao getCustomerDao() {
		return new JdbcCustomerDao();
	}

	// ArticleDao 구현체 반환
	public ArticleDao getArticleDao() {
		return new JdbcArticleDao();
	}

	// Product 구현체 반환
	public ProductDao getProductDao() {
		return new JdbcProductDao();
	}

	// Image 구현체 반환
	public ImageDao getImageDao() {
		return new JdbcImageDao();
	}
	
	public ReplyDao getReplyDao() {
		return new JdbcReplyDao();
	}
}
