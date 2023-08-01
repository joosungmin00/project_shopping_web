package ezen.shoppingmall.domain.customer.dto;

/**
 * 쇼핑몰 회원가입 한 회원에 대한 재사용 가능한 컴포넌트
 * @author 윤동진
 *
 */
public class Customer {
	
	private String id;
	private String name;
	private String pw;
	private String email;
	private String regdate;
	private String customerId;
	
	
	public Customer(){}

	public Customer(String customerId,String id, String name, String pw, String email, String regdate) {
		super();
		this.customerId = customerId;
		this.id = id;
		this.name = name;
		this.pw = pw;
		this.email = email;
		this.regdate = regdate;
	}
	

	public String getCustomerId() {
		return customerId;
	}

	public void setCustomerId(String customerId) {
		this.customerId = customerId;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	@Override
	public String toString() {
		return "Customer [id=" + id + ", name=" + name + ", pw=" + pw + ", email=" + email + ", regdate=" + regdate
				+ ", customerId=" + customerId + "]";
	}


	
	

}













