package dao;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;


public class UtoonDAO {

	private static SqlSessionFactory sqlSessionFactory;
//	database 연결 -> config.xml과 MyBatis API를 연결
//	초기화 블럭
	static {

		try {
			String resource = "dao/config.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);

		} catch (Exception e) {
			e.printStackTrace();
		}

	}
////////////////////////////////////////////////////////////////////////////////////////////
	// 회원가입
	public void newProfile(MemberVO vo) {
		SqlSession session = sqlSessionFactory.openSession();
		session.insert("newProfile", vo);
		session.commit();
		session.close();
	}

	// 로그인
	public MemberVO memberLogin(MemberVO vo) {
			
			System.out.println("Login Test : " + vo.getMem_id());
			SqlSession session = sqlSessionFactory.openSession();
			MemberVO lvo = session.selectOne("memberLogin", vo);
			session.close();			
			System.out.println("Login Test2 : " + lvo);					
		return lvo;

	}
	// 회원정보 수정
	public void editProfile(MemberVO vo){
		SqlSession session = sqlSessionFactory.openSession();
		session.update("editProfile", vo);
		session.commit();
		session.close();
	}
////////////////////////////////////////////////////////////////////////////////////////////
	// 커뮤니티 전체 글 가져오기
	public List<PostVO> postAllList() {
		SqlSession session = sqlSessionFactory.openSession();
		List<PostVO> list = session.selectList("postAllList");
		session.close();// 반납
		return list;
	}
	
	// 커뮤니티 글 쓰기
	public void postInsert(PostVO vo) {
		SqlSession session = sqlSessionFactory.openSession();
		session.insert("postInsert", vo);
		session.commit();
		session.close();
	}
	// 커뮤니티 글 상세보기
	public PostVO postGet(int post_num) {
		SqlSession session = sqlSessionFactory.openSession();
		PostVO vo = session.selectOne("postGet", post_num);
		session.close();
		return vo;
	}
	// 커뮤니티 글 수정하기
	public void postUpdate(PostVO vo) {
		SqlSession session = sqlSessionFactory.openSession();
		session.update("postUpdate", vo);
		session.commit();
		session.close();
	}
	// 커뮤니티 글 삭제하기
	public void postDelete(int post_num) {
		SqlSession session = sqlSessionFactory.openSession();
		session.delete("postDelete", post_num);
		session.commit();
		session.close();
	}
	// 커뮤니티 뷰 카운트
	public void postView(int post_num) {
		SqlSession session = sqlSessionFactory.openSession();
		session.update("postView", post_num);
		session.commit();
		session.close();
	}
////////////////////////////////////////////////////////////////////////////////////////////
	// 리뷰 전체 글 가져오기
	public List<ReviewVO> reviewAllList() {
		SqlSession session = sqlSessionFactory.openSession();
		List<ReviewVO> list = session.selectList("reviewAllList");
		session.close();// 반납
		return list;
	}
	// 리뷰 글 쓰기
	public void reviewInsert(ReviewVO vo) {
		SqlSession session = sqlSessionFactory.openSession();
		session.insert("reviewInsert", vo);
		session.commit();
		session.close();
	}
	// 리뷰 글 상세보기
	public ReviewVO reviewGet(int rv_num) {
		SqlSession session = sqlSessionFactory.openSession();
		ReviewVO vo = session.selectOne("reviewGet", rv_num);
		session.close();
		return vo;
	}
	// 리뷰 글 수정하기
	public void reviewUpdate(ReviewVO vo) {
		SqlSession session = sqlSessionFactory.openSession();
		session.update("reviewUpdate", vo);
		session.commit();
		session.close();
	}
	// 리뷰 글 삭제하기
	public void reviewDelete(int rv_num) {
		SqlSession session = sqlSessionFactory.openSession();
		session.delete("reviewDelete", rv_num);
		session.commit();
		session.close();
	}
	// 리뷰 뷰 카운트
	public void reviewView(int rv_num) {
		SqlSession session = sqlSessionFactory.openSession();
		session.update("reviewView", rv_num);
		session.commit();
		session.close();
	}
////////////////////////////////////////////////////////////////////////////////////////////
	// 내 게시글
	public List<PostVO> myPost() {
		SqlSession session = sqlSessionFactory.openSession();
		List<PostVO> list = session.selectList("myPost");
		session.close();// 반납
		return list;
	}
	// 내 리뷰
	public List<ReviewVO> myReview() {
		SqlSession session = sqlSessionFactory.openSession();
		List<ReviewVO> list = session.selectList("myReview");
		session.close();// 반납
		return list;
	}
	// 내 게시글 댓글
	public List<PCommentVO> myPComment() {
		SqlSession session = sqlSessionFactory.openSession();
		List<PCommentVO> list = session.selectList("myPComment");
		session.close();// 반납
		return list;
	}
	// 내 리뷰 댓글
	public List<RCommentVO> myRComment() {
		SqlSession session = sqlSessionFactory.openSession();
		List<RCommentVO> list = session.selectList("myRComment");
		session.close();// 반납
		return list;
	}
	// 스크랩 리스트
	public List<ScrapVO> myScrap(String mem_id) {
		SqlSession session = sqlSessionFactory.openSession();
		List<ScrapVO> list = session.selectList("myScrap",mem_id);
		session.close();// 반납
		return list;	
	}
	// 내 게시글 개수
	public int myPC(String mem_id) {
		SqlSession session = sqlSessionFactory.openSession();
		int myPC = session.selectOne("myPC",mem_id);
		session.close();// 반납
		return myPC;
	}
	// 내 리뷰 개수
	public int myRC(String mem_id) {
		SqlSession session = sqlSessionFactory.openSession();
		int myRC = session.selectOne("myRC",mem_id);
		session.close();// 반납
		return myRC;
	}
	// 내 게시글 댓글 개수
	public int myPCC(String mem_id) {
		SqlSession session = sqlSessionFactory.openSession();
		int myPCC = session.selectOne("myPCC",mem_id);
		session.close();// 반납
		return myPCC;
	}
	// 내 리뷰 댓글 개수
		public int myRCC(String mem_id) {
			SqlSession session = sqlSessionFactory.openSession();
			int myRCC = session.selectOne("myRCC",mem_id);
			session.close();// 반납
			return myRCC;
		}
////////////////////////////////////////////////////////////////////////////////////////////
}
