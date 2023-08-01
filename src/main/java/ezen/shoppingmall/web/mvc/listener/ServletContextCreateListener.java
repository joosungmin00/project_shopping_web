package ezen.shoppingmall.web.mvc.listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * 웹 애플리케이션 루트패스 설정 리스너
 */
@WebListener
public class ServletContextCreateListener implements ServletContextListener {
	
	private static final String ROOT_PATH = "/mall";
	
    public void contextInitialized(ServletContextEvent sce)  { 
         sce.getServletContext().setAttribute("path", ROOT_PATH);
    }
}
