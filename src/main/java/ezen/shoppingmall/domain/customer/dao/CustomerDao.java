package ezen.shoppingmall.domain.customer.dao;

import java.sql.Connection;
import java.util.List;

import ezen.shoppingmall.domain.customer.dto.Customer;

/**
 * DB 회원 관리 명세
 * @author 윤동진
 *
 */
public interface CustomerDao {

	public boolean create(Connection connection, Customer customer);
	public Customer findByUser(Connection connection,String id, String pw);
	public List<Customer> findByAll(Connection connection);
	public Customer findById(Connection connection, String id);
}

	



