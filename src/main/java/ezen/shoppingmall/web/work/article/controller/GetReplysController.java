package ezen.shoppingmall.web.work.article.controller;

import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

import ezen.shoppingmall.domain.article.dto.Reply;
import ezen.shoppingmall.domain.article.service.ReplyService;
import ezen.shoppingmall.domain.common.factory.ServiceFactory;
import ezen.shoppingmall.web.mvc.controller.RestController;

public class GetReplysController implements RestController {

    private ReplyService replyService = ServiceFactory.getInstance().getReplyService();

    @Override
    public void process(Map<String, String> paramMap, HttpServletRequest request, HttpServletResponse response) {
        response.setContentType("application/json; charset=utf-8");
        try {
            PrintWriter out = response.getWriter();

            //String postId = paramMap.get("postId");

            List<Reply> list = replyService.getRepliesByMemoId();

            ObjectMapper objectMapper = new ObjectMapper();
            String jsonList = objectMapper.writeValueAsString(list);

            out.println(jsonList);
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage());
        }

    }

}
