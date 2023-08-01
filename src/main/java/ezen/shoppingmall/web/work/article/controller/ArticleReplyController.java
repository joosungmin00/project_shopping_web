package ezen.shoppingmall.web.work.article.controller;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import ezen.shoppingmall.domain.article.dto.Memo;
import ezen.shoppingmall.domain.article.dto.Reply;
import ezen.shoppingmall.domain.article.service.ArticleService;
import ezen.shoppingmall.domain.article.service.ReplyService;
import ezen.shoppingmall.domain.common.factory.ServiceFactory;
import ezen.shoppingmall.domain.customer.dto.Customer;
import ezen.shoppingmall.web.mvc.controller.HttpController;
import ezen.shoppingmall.web.mvc.controller.RestController;

/**
 * 댓글 처리 세부 컨트롤러 
 * /article
 */
public class ArticleReplyController implements RestController {

	private ReplyService replyService = ServiceFactory.getInstance().getReplyService();

	@Override
	public void process(Map<String, String> paramMap, HttpServletRequest request, HttpServletResponse response) {
		response.setContentType("application/json; charset=utf-8");
		try {
			PrintWriter out = response.getWriter();
			
			String postId = paramMap.get("postId");
			String contents = paramMap.get("contents");
			
			
			HttpSession session = request.getSession();
			Customer customer = (Customer) session.getAttribute("loginCustomer");
			String customerId = customer.getId();
			
			Reply reply = new Reply();
			reply.setPostId(postId);
			reply.setCustomerId(customerId);
			reply.setContents(contents);
			
			
			replyService.writeReply(reply);
			
			// 요청 파라미터에서 memoId를 가져옵니다.
//			String memoId = paramMap.get("id");
			// ReplyService를 사용하여 해당 memoId에 해당하는 댓글 목록을 가져옵니다.
			List<Reply> list = replyService.getRepliesByMemoId();
			
			ObjectMapper objectMapper = new ObjectMapper();
			String jsonList = objectMapper.writeValueAsString(list);
			
			out.println(jsonList);
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		}
		
	}

}
