package ezen.shoppingmall.domain.customer.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import ezen.shoppingmall.domain.common.factory.ServiceFactory;
import ezen.shoppingmall.domain.customer.dao.CustomerDao;
import ezen.shoppingmall.domain.customer.dto.Customer;

/**
 * 회원 관련 비즈니스 로직 처리 및 트랜잭션 관리 구현체
 * @author 윤동진
 */
public class CustomerServiceImpl implements CustomerService{

	private DataSource dataSource;
	private CustomerDao customerDao;
	
	public CustomerServiceImpl(DataSource dataSource, CustomerDao customerDao) {
		this.dataSource = dataSource;
		this.customerDao = customerDao;
	}

	@Override
	public Customer registerCustomer(Customer customer) {
		Connection connection = null;
		
		try {
			// 트랜잭션 시작
			connection = dataSource.getConnection();
			connection.setAutoCommit(false);
			//customerDao 사용
			//등록
			customerDao.create(connection, customer);
			//상세조회
			customer = customerDao.findById(connection, customer.getId());
			//정상 처리 시 커밋
			connection.commit();
		} catch (Exception e) {
			try {connection.rollback();} catch (SQLException e1) {throw new RuntimeException(e1.getMessage());}
				throw new RuntimeException(e.getMessage());
			}finally {
				try {if(connection != null) connection.close();}catch(SQLException e1) {}
			}
		return customer;
	}

	@Override
	public Customer isCustomer(String id, String pw) {
		Customer customer = null;
		Connection connection = null;
		try {
			// select는 트랜잭션 X
			connection = dataSource.getConnection();
			customer=customerDao.findByUser(connection, id, pw);
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		} finally {
			try {if(connection != null) connection.close();} catch (SQLException e1) {}
		}
		return customer;
	}

	@Override
	public List<Customer> getCustomer() {
		List<Customer> customers = null;
		Connection connection = null;
		try {
			connection = dataSource.getConnection();
			customers = customerDao.findByAll(connection);
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		} finally {
			try {if(connection != null) connection.close();} catch (SQLException e1) {}
		}
		return customers;
	}

	@Override
	public Customer readCustomer(String id) {
		Customer customer = null;
		Connection connection = null;
		try {
			connection = dataSource.getConnection();
			customer = customerDao.findById(connection, id);
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		} finally {
			try {if(connection != null) connection.close();} catch (SQLException e1) {}
		}
		return customer;
	}
	
	
	public static void main(String[] args) {
		ServiceFactory serviceFactory = ServiceFactory.getInstance();
		CustomerService customerService = serviceFactory.getCustomerService();
		
//		Customer customer = new Customer("vilose7222","윤동진아","1234","vilose7222@gail.com",null);
//		customer = customerService.registerCustomer(customer);
//		System.out.println("등록 후 상세정보 : " + customer);
//		Customer loginCustomer = customerService.isCustomer("vilose7222", "1234");
//		System.out.println(loginCustomer);
		
		
		
		
	}
	
	
	
	
	
	
	
}
