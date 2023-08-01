package ezen.shoppingmall.domain.article.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import ezen.shoppingmall.domain.article.dto.Memo;
import ezen.shoppingmall.domain.common.factory.DaoFactory;

/**
 * RDB를 통해 게시글 저장 및 목록 구현체
 * @author 주성민
 * @author 현정환
 */
public class JdbcArticleDao  implements ArticleDao {
	
	/**
	 * 신규글 등록
	 */
	public boolean create(Connection connection,  Memo memo){
		boolean success = false;
		StringBuilder sb = new StringBuilder();
		sb.append("INSERT INTO notice (")
		  .append("   post_id,")
		  .append("   customer_id,")
		  .append("   title,")
		  .append("   contents")
		  .append(" ) VALUES (")
		  .append("   post_id_seq.NEXTVAL,")
		  .append("   ?,")
		  .append("   ?,")
		  .append("   ?")
		  .append(")");

		
		PreparedStatement pstmt = null;
		try {
			pstmt = connection.prepareStatement(sb.toString());
//			pstmt.setString(1, memo.getPostId());
			pstmt.setString(1, memo.getCustomerId());
			pstmt.setString(2, memo.getTitle());
			pstmt.setString(3, memo.getContents());
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
	public int getCountAll(Connection connection) {
		int count = 0;
		StringBuilder sb = new StringBuilder();
		sb.append(" SELECT COUNT(*) cnt")
		  .append(" FROM notice");
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = connection.prepareStatement(sb.toString());
			rs = pstmt.executeQuery();
			if (rs.next()) {
				count = rs.getInt("cnt");
			}
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		} finally {
			try {
				if (rs != null) rs.close();
				if (pstmt != null) pstmt.close();
			} catch (Exception e) {}
		}
		return count;
		
		
	}
	
	@Override
	public List<Memo> findByAll(Connection connection, int requestPage, int elementSize) {
		List<Memo>  list = null;
		StringBuilder sb = new StringBuilder();
		sb.append("SELECT page, post_id, datecreated, contents, customer_id")
		  .append(" FROM (SELECT ceil(ROWNUM / ?) page, post_id, datecreated, contents, customer_id")
		  .append(" FROM (SELECT post_id, to_char(datecreated, 'yyyy-MM-DD HH24:MI:SS') datecreated, contents, customer_id")
		  .append(" FROM notice")
		  .append(" ORDER BY datecreated DESC))")
		  .append(" WHERE page = ?");

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = connection.prepareStatement(sb.toString());
			pstmt.setInt(1, elementSize);
			pstmt.setInt(2, requestPage);
			rs = pstmt.executeQuery();
			list = new ArrayList<Memo>();
			while (rs.next()) {			
				String id = rs.getString("post_id");
				String datecreated = rs.getString("datecreated");
				String content = rs.getString("contents");
				// 웹 페이지 줄바꿈 처리
				content = content.replaceAll("\r", "<br>");
				String memberId = rs.getString("customer_id");
				
				Memo memo = new Memo();
				memo.setPostId(id);
				memo.setContents(content);
				memo.setDatecreated(datecreated);
				memo.setCustomerId(memberId);
				list.add(memo);
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


















