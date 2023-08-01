package ezen.shoppingmall.domain.customer.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import ezen.shoppingmall.domain.customer.dto.Customer;
/**
 *  RDB를 통해 회원 저장 및 관리(검색, 수정, 삭제) 구현체
 * @author 윤동진
 *
 */
public class JdbcCustomerDao implements CustomerDao{
	/**
	 * 신규 회원 등록
	 */
	@Override
	public boolean create(Connection connection, Customer customer) {
		boolean success = false;
		StringBuilder sb = new StringBuilder();
		sb.append(" INSERT INTO customer (")
		  .append("		customer_id,")
		  .append("		id,")
		  .append("		name,")
		  .append("		pw,")
		  .append("		email)")
		  .append(" VALUES (customer_id_seq.NEXTVAL, ?, ?, ?, ?)");
		
		PreparedStatement pstmt = null;
		try {
			pstmt = connection.prepareStatement(sb.toString());
			pstmt.setString(1, customer.getId());
			pstmt.setString(2, customer.getName());
			pstmt.setString(3, customer.getPw());
			pstmt.setString(4, customer.getEmail());
			pstmt.executeUpdate();
			success = true;
		} catch (SQLException e) {
			throw new RuntimeException(e.getMessage());
		} finally{
			try {
				if(pstmt != null) pstmt.close();
				} catch (Exception e) {}
		}
		return success;
	}

	/**
	 * 
	 */
	@Override
	public Customer findByUser(Connection connection, String id, String pw) {
		Customer customer = null;
		StringBuilder sb = new StringBuilder();
		sb.append(" SELECT id, name, TO_CHAR(regdate, 'yyyy-MM-DD DAY') regdate FROM customer")
		  .append(" WHERE id = ? AND pw = ?");
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = connection.prepareStatement(sb.toString());
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {			
				String uid = rs.getString("id");
				String uname = rs.getString("name");
				String regdate = rs.getString("regdate");
				customer = new Customer();
				customer.setId(uid);
				customer.setName(uname);
				customer.setRegdate(regdate);
			}
			
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		} finally {
			try {
				if (rs != null) rs.close();
				if (pstmt != null) pstmt.close();
			} catch (Exception e) {}
		}
		return customer;
	}

	@Override
	public List<Customer> findByAll(Connection connection) {
		List<Customer>  list = null;
		Customer customer = null;
		StringBuilder sb = new StringBuilder();
		sb.append(" SELECT id, name, email, TO_CHAR(regdate, 'yyyy-MM-DD DAY') regdate FROM customer");
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = connection.prepareStatement(sb.toString());
			rs = pstmt.executeQuery();
			list = new ArrayList<Customer>();
			while (rs.next()) {			
				String uid = rs.getString("id");
				String uname = rs.getString("name");
				String email = rs.getString("email");
				String regdate = rs.getString("regdate");
				customer = new Customer();
				customer.setId(uid);
				customer.setName(uname);
				customer.setEmail(email);
				customer.setRegdate(regdate);
				list.add(customer);
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

	@Override
	public Customer findById(Connection connection, String id) {
		Customer customer = null;
		StringBuilder sb = new StringBuilder();
		sb.append(" SELECT id, pw, name, email, TO_CHAR(regdate, 'yyyy-MM-DD DAY') regdate")
		  .append(" FROM customer")
		  .append(" WHERE id = ?");
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = connection.prepareStatement(sb.toString());
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				customer = new Customer();
				String uid = rs.getString("id");
				String uname = rs.getString("name");
				String email = rs.getString("email");
				String regdate = rs.getString("regdate");
				customer.setId(uid);
				customer.setName(uname);
				customer.setEmail(email);
				customer.setRegdate(regdate);
			}
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		} finally {
			try {
				if (rs != null) rs.close();
				if (pstmt != null) pstmt.close();
			} catch (Exception e) {}
		}
		return customer;
	}

}
