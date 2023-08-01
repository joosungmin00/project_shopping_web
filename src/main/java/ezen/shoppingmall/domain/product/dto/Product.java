package ezen.shoppingmall.domain.product.dto;

public class Product {

	private String product_id;
	private String p_name;
	private int stock;
	private int price;
	private int saleprice;
	private String p_desc;
	private String p_detaildesc;
	private String p_regdate;
	private String p_img;
	private String ca_id;
	private int quantity;

	public Product() {
	}

	public Product(String product_id, String p_name, int stock, int price, int saleprice, String p_desc,
			String p_detaildesc, String p_regdate, String p_img, String ca_id) {
		super();
		this.product_id = product_id;
		this.p_name = p_name;
		this.stock = stock;
		this.price = price;
		this.saleprice = saleprice;
		this.p_desc = p_desc;
		this.p_detaildesc = p_detaildesc;
		this.p_regdate = p_regdate;
		this.p_img = p_img;
		this.ca_id = ca_id;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public String getProduct_id() {
		return product_id;
	}

	public void setProduct_id(String product_id) {
		this.product_id = product_id;
	}

	public String getP_name() {
		return p_name;
	}

	public void setP_name(String p_name) {
		this.p_name = p_name;
	}

	public int getStock() {
		return stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getSaleprice() {
		return saleprice;
	}

	public void setSaleprice(int saleprice) {
		this.saleprice = saleprice;
	}

	public String getP_desc() {
		return p_desc;
	}

	public void setP_desc(String p_desc) {
		this.p_desc = p_desc;
	}

	public String getP_detaildesc() {
		return p_detaildesc;
	}

	public void setP_detaildesc(String p_detaildesc) {
		this.p_detaildesc = p_detaildesc;
	}

	public String getP_regdate() {
		return p_regdate;
	}

	public void setP_regdate(String p_regdate) {
		this.p_regdate = p_regdate;
	}

	public String getP_img() {
		return p_img;
	}

	public void setP_img(String p_img) {
		this.p_img = p_img;
	}

	public String getCa_id() {
		return ca_id;
	}

	public void setCa_id(String ca_id) {
		this.ca_id = ca_id;
	}

	@Override
	public String toString() {
		return "Product [product_id=" + product_id + ", p_name=" + p_name + ", stock=" + stock + ", price=" + price
				+ ", saleprice=" + saleprice + ", p_desc=" + p_desc + ", p_detaildesc=" + p_detaildesc + ", p_regdate="
				+ p_regdate + ", p_img=" + p_img + ", ca_id=" + ca_id + ", quantity=" + quantity + "]";
	}

}
