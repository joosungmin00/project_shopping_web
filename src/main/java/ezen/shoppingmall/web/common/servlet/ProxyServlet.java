package ezen.shoppingmall.web.common.servlet;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/albums")
public class ProxyServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("application/json; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		// 서블릿에서 Open API 사용
		URL url = new URL("https://jsonplaceholder.typicode.com/albums");
		HttpURLConnection connection = (HttpURLConnection)url.openConnection();
		
		connection.setRequestMethod("GET");
		connection.setConnectTimeout(5000);
		
		BufferedReader in = null;
		StringBuilder sb = new StringBuilder();		
		int status = connection.getResponseCode();
		String text = null;
		if(status >= 300) {
			in = new BufferedReader(new InputStreamReader(connection.getErrorStream()));
			while((text=in.readLine()) != null) {
				sb.append(text);				
			}			
		}else {
			in = new BufferedReader(new InputStreamReader(connection.getInputStream()));
			while((text=in.readLine()) != null) {
				sb.append(text);				
			}
		}
		in.close();
//		System.out.println(sb.toString());
		out.print(sb.toString());
	}
}


