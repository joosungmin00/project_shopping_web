package ezen.shoppingmall.domain.article.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import ezen.shoppingmall.domain.article.dao.ArticleDao;
import ezen.shoppingmall.domain.article.dao.ReplyDao;
import ezen.shoppingmall.domain.article.dto.Memo;
import ezen.shoppingmall.domain.article.dto.Reply;
import ezen.shoppingmall.domain.common.factory.ServiceFactory;
import ezen.shoppingmall.domain.customer.dto.Customer;
import ezen.shoppingmall.domain.customer.service.CustomerService;
import ezen.shoppingmall.web.common.page.PageParams;

/**
 * 방명록 관련 비즈니스 로직 처리 및 트랜잭션 처리 구현체
 */
public class ReplyServiceImpl implements ReplyService {

	private DataSource dataSource;
	private ReplyDao replyDao;

	public ReplyServiceImpl(DataSource dataSource, ReplyDao replyDao) {
		this.dataSource = dataSource;
		this.replyDao = replyDao;
	}

	@Override
	public void writeReply(Reply reply) {
		Connection connection = null;
		try {
			connection = dataSource.getConnection();
			replyDao.create(connection, reply);
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		} finally {
			try {
				if (connection != null)	connection.close();
			} catch (SQLException e1) {	}
		}
	}
	

	@Override
	public List<Reply> getRepliesByMemoId() {
		List<Reply> list = null;
		Connection connection = null;
		try {
			connection = dataSource.getConnection();
			list = replyDao.findByAll(connection);
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		} finally {
			try {
				if (connection != null)	connection.close();
			} catch (SQLException e1) {	}
		}
		return list;
	}

	

	// 테스트 메인
	public static void main(String[] args) {
//		ServiceFactory serviceFactory = ServiceFactory.getInstance();
//		ReplyService replyService = serviceFactory.getReplyService();
		
//		List<Reply> replies = replyService.getRepliesByMemoId();
//			System.out.println(replies);
//		
		
//		Customer member = new Customer("james", "1111", "제임스", "james1@gmail.com", null);
//		member = memberService.registerCustomer(member);
//		System.out.println("등록 후 상세정보 : " + member);

//		Customer loginMember = memberService.isCustomer("jamess", "2111");
//		System.out.println(loginMember);

//		List<Customer> members = memberService.getCustomer();
//		System.out.println(members);

//		Customer detailMember = memberService.readCustomer("bangry");
//		System.out.println(detailMember);

	}

	

}
