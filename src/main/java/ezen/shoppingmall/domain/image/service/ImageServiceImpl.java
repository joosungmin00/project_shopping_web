package ezen.shoppingmall.domain.image.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import ezen.shoppingmall.domain.common.factory.ServiceFactory;
import ezen.shoppingmall.domain.image.dao.ImageDao;
import ezen.shoppingmall.domain.image.dto.Image;

public class ImageServiceImpl implements ImageService{

	private DataSource dataSource;
	private ImageDao imageDao;
	
	public ImageServiceImpl(DataSource dataSource, ImageDao imageDao) {
		this.dataSource = dataSource;
		this.imageDao = imageDao;
	}
	
	@Override
	public List<Image> getImage(String product_id) {
		List<Image> list = null;
		Connection connection = null;
		try {
			connection = dataSource.getConnection();
			list =	imageDao.findImage(connection, product_id);
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		} finally {
			try {if(connection != null) connection.close();} catch (SQLException e1) {}
		}
		return list;
	}

	public static void main(String[] args) {
		ServiceFactory serviceFactory = ServiceFactory.getInstance();
		ImageService imageService = serviceFactory.getImageService();
		
		
		
		List<Image> list = imageService.getImage("1");
		for (Image image : list) {
			System.out.println(image);
		}
		
		
	}
	
}
