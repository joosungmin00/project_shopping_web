package ezen.shoppingmall.domain.image.dto;

/**
 * 제품에 대한 여러개의 이미지구현 위한 DTO
 * 
 * @author 윤동진
 *
 */
public class Image {
	private String image_id;
	private String path;
	private String img_desc;
	private String product_id;

	public Image() {
	}

	public Image(String image_id, String path, String img_desc, String product_id) {
		this.image_id = image_id;
		this.path = path;
		this.img_desc = img_desc;
		this.product_id = product_id;
	}

	public String getImage_id() {
		return image_id;
	}

	public void setImage_id(String image_id) {
		this.image_id = image_id;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public String getImg_desc() {
		return img_desc;
	}

	public void setImg_desc(String img_desc) {
		this.img_desc = img_desc;
	}

	public String getProduct_id() {
		return product_id;
	}

	public void setProduct_id(String product_id) {
		this.product_id = product_id;
	}

	@Override
	public String toString() {
		return "Image [image_id=" + image_id + ", path=" + path + ", img_desc=" + img_desc + ", product_id="
				+ product_id + "]";
	}

}
