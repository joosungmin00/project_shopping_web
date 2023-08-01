package ezen.shoppingmall.domain.article.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import ezen.shoppingmall.domain.article.dto.Memo;
import ezen.shoppingmall.domain.article.dto.Reply;
import ezen.shoppingmall.domain.common.factory.DaoFactory;

/**
 * RDB를 통해 게시글 저장 및 목록 구현체
 * @author 주성민
 * @author 현정환
 */
public class JdbcReplyDao  implements ReplyDao {
	
	/**
	 * 신규글 등록
	 */
	public boolean create(Connection connection, Reply reply){
		boolean success = false;
		StringBuilder sb = new StringBuilder();
		sb.append("INSERT INTO reply (")
		  .append("   reply_id,")
		  .append("   post_id,")
		  .append("   customer_id,")
		  .append("   contents")
		  .append(" ) VALUES (")
		  .append("   reply_id_seq.NEXTVAL,")
		  .append("   ?,")
		  .append("   ?,")
		  .append("   ?")
		  .append(")");

		
		PreparedStatement pstmt = null;
		try {
			pstmt = connection.prepareStatement(sb.toString());
//			pstmt.setString(1, memo.getPostId());
			pstmt.setString(1, reply.getPostId());
			pstmt.setString(2, reply.getCustomerId());
			pstmt.setString(3, reply.getContents());
			pstmt.executeUpdate();
			success = true;
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		} finally {
			try {
				if (pstmt != null) pstmt.close();
			} catch (Exception e) {}
		}
		return success;
	}
	
	
	@Override
	public List<Reply> findByAll(Connection connection) {
		List<Reply>  list = null;
		StringBuilder sb = new StringBuilder();
		sb.append("SELECT reply_id, post_id, customer_id, contents, datecreated")
		  .append(" FROM reply");
//		  .append(" ORDER BY reply_id DESC");
//		  .append(" WHERE post_id = ?");

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = connection.prepareStatement(sb.toString());
//			pstmt.setString(1, memoId);
			rs = pstmt.executeQuery();
			list = new ArrayList<Reply>();
			while (rs.next()) {			
				String id = rs.getString("reply_id");
				String pid = rs.getString("post_id");
				String memberId = rs.getString("customer_id");
				String content = rs.getString("contents");
				String datecreated = rs.getString("datecreated");
				// 웹 페이지 줄바꿈 처리
				content = content.replaceAll("\r", "<br>");
				
				Reply reply = new Reply();
				reply.setReplyId(id);
				reply.setPostId(pid);
				reply.setContents(content);
				reply.setDatecreated(datecreated);
				reply.setCustomerId(memberId);
				list.add(reply);
			}
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		} finally {
			try {
				if (rs != null) rs.close();
				if (pstmt != null) pstmt.close();
			} catch (Exception e) {}
		}
		return list;
	}
}


















