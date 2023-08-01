package ezen.shoppingmall.web.common.servlet;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * 파일 업로드 서블릿
 */

@WebServlet("/upload")
@MultipartConfig(
		fileSizeThreshold = 1024 * 1024 * 1, 
		maxFileSize = 1024 * 1024 * 10, 
		maxRequestSize = 1024 * 1024* 15, 
		location = "C:/ezen-fullstack")
public class FileUploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String uploadPath ;
	
	@Override
	public void init() throws ServletException {
		uploadPath = getServletContext().getInitParameter("fileStorage");
	}
		
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/plain; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		request.setCharacterEncoding("utf-8");
		String comments = request.getParameter("comments");
		System.out.println("comments : " + comments);

		
		File file = new File(uploadPath);
		if (!file.exists()) {
			file.mkdirs();
		}
		
		List<String> fileNames = new ArrayList<String>();
		// 멀티 파일 업로드 파일인 경우...
		for (Part part : request.getParts()) {
			String fileName = part.getSubmittedFileName();
			fileNames.add(fileName);
			if (fileName != null) {
				try {
					part.write(uploadPath + fileName);
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		out.println("파일 처리 완료!!!");
	}
}




