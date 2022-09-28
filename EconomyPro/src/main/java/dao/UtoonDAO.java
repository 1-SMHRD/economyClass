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
	public void editProfile(MemberVO vo) {
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
	public List<ReviewVO> reviewAllList(int wt_id) {
		SqlSession session = sqlSessionFactory.openSession();
		List<ReviewVO> list = session.selectList("reviewAllList", wt_id);
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

	// 리뷰 평점
	public void reviewView(int rv_num) {
		SqlSession session = sqlSessionFactory.openSession();
		session.update("reviewView", rv_num);
		session.commit();
		session.close();
	}

////////////////////////////////////////////////////////////////////////////////////////////
	// 게시글 댓글 가져오기
	public List<PCommentVO> pcAllList(int post_num) {
		SqlSession session = sqlSessionFactory.openSession();
		List<PCommentVO> list = session.selectList("pcAllList", post_num);
		session.close();// 반납
		return list;
	}

	// 게시글 댓글 쓰기
	public void pcInsert(PCommentVO vo) {
		SqlSession session = sqlSessionFactory.openSession();
		session.insert("pcInsert", vo);
		session.commit();
		session.close();
	}

	// 게시글 댓글 수정하기
	public void pcUpdate(PCommentVO vo) {
		SqlSession session = sqlSessionFactory.openSession();
		session.update("pcUpdate", vo);
		session.commit();
		session.close();
	}

	// 게시글 댓글 삭제하기
	public void pcDelete(int pc_num) {
		SqlSession session = sqlSessionFactory.openSession();
		session.delete("pcDelete", pc_num);
		session.commit();
		session.close();
	}

////////////////////////////////////////////////////////////////////////////////////////////
	// 리뷰 댓글 가져오기
	public List<RCommentVO> rcAllList(int rv_id) {
		SqlSession session = sqlSessionFactory.openSession();
		List<RCommentVO> list = session.selectList("rcAllList", rv_id);
		session.close();// 반납
		return list;
	}

	// 리뷰 댓글 쓰기
	public void rcInsert(RCommentVO vo) {
		SqlSession session = sqlSessionFactory.openSession();
		session.insert("rcInsert", vo);
		session.commit();
		session.close();
	}

	// 리뷰 댓글 수정하기
	public void rcUpdate(RCommentVO vo) {
		SqlSession session = sqlSessionFactory.openSession();
		session.update("rcUpdate", vo);
		session.commit();
		session.close();
	}

	// 리뷰 댓글 삭제하기
	public void rcDelete(int rc_num) {
		SqlSession session = sqlSessionFactory.openSession();
		session.delete("rcDelete", rc_num);
		session.commit();
		session.close();
	}

////////////////////////////////////////////////////////////////////////////////////////////
	// 내 게시글
	public List<PostVO> myPost(String mem_id) {
		SqlSession session = sqlSessionFactory.openSession();
		List<PostVO> list = session.selectList("myPost", mem_id);
		session.close();// 반납
		return list;
	}

	// 내 리뷰
	public List<ReviewVO> myReview(String mem_id) {
		SqlSession session = sqlSessionFactory.openSession();
		List<ReviewVO> list = session.selectList("myReview", mem_id);
		session.close();// 반납
		return list;
	}

	// 내 게시글 댓글
	public List<PCommentVO> myPComment(String mem_id) {
		SqlSession session = sqlSessionFactory.openSession();
		List<PCommentVO> list = session.selectList("myPComment", mem_id);
		session.close();// 반납
		return list;
	}

	// 내 리뷰 댓글
	public List<RCommentVO> myRComment(String mem_id) {
		SqlSession session = sqlSessionFactory.openSession();
		List<RCommentVO> list = session.selectList("myRComment", mem_id);
		session.close();// 반납
		return list;
	}

	// 스크랩 리스트
	public List<ScrapVO> myScrap(String mem_id) {
		SqlSession session = sqlSessionFactory.openSession();
		List<ScrapVO> list = session.selectList("myScrap", mem_id);
		session.close();// 반납
		return list;
	}

	// 내 게시글 개수
	public int myPC(String mem_id) {
		SqlSession session = sqlSessionFactory.openSession();
		int myPC = session.selectOne("myPC", mem_id);
		session.close();// 반납
		return myPC;
	}

	// 내 리뷰 개수
	public int myRC(String mem_id) {
		SqlSession session = sqlSessionFactory.openSession();
		int myRC = session.selectOne("myRC", mem_id);
		session.close();// 반납
		return myRC;
	}

	// 내 게시글 댓글 개수
	public int myPCC(String mem_id) {
		SqlSession session = sqlSessionFactory.openSession();
		int myPCC = session.selectOne("myPCC", mem_id);
		session.close();// 반납
		return myPCC;
	}

	// 내 리뷰 댓글 개수
	public int myRCC(String mem_id) {
		SqlSession session = sqlSessionFactory.openSession();
		int myRCC = session.selectOne("myRCC", mem_id);
		session.close();// 반납
		return myRCC;
	}

////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////신현범0927//////////////////////////////////////////////////////////
// 메인 페이지 웹툰 랭킹 1-1	전체
	public List<WebtoonVO> rankAllWT() {
		SqlSession session = sqlSessionFactory.openSession();
		List<WebtoonVO> list = session.selectList("rankAllWT");
		session.close();// 반납
		return list;
	}

// 메인 페이지 웹툰 랭킹 1-2	네이버
	public List<WebtoonVO> rankNVWT() {
		SqlSession session = sqlSessionFactory.openSession();
		List<WebtoonVO> list = session.selectList("rankNVWT");
		session.close();// 반납
		return list;
	}

// 메인 페이지 웹툰 랭킹 1-3 카카오
	public List<WebtoonVO> rankKKWT() {
		SqlSession session = sqlSessionFactory.openSession();
		List<WebtoonVO> list = session.selectList("rankKKWT");
		session.close();// 반납
		return list;
	}

// 메인 페이지 웹툰 랭킹 1-4	레진
	public List<WebtoonVO> rankLZWT() {
		SqlSession session = sqlSessionFactory.openSession();
		List<WebtoonVO> list = session.selectList("rankLZWT");
		session.close();// 반납
		return list;
	}

// 메인 페이지 웹툰 랭킹 1-5	탑툰
	public List<WebtoonVO> rankTTWT() {
		SqlSession session = sqlSessionFactory.openSession();
		List<WebtoonVO> list = session.selectList("rankTTWT");
		session.close();// 반납
		return list;
	}

// 메인 페이지 웹툰 랭킹 1-6	투믹스
	public List<WebtoonVO> rankTMWT() {
		SqlSession session = sqlSessionFactory.openSession();
		List<WebtoonVO> list = session.selectList("rankTMWT");
		session.close();// 반납
		return list;
	}

// 메인 페이지 인기 게시글 2-1

	public List<PostVO> popPost() {
		SqlSession session = sqlSessionFactory.openSession();
		List<PostVO> list = session.selectList("popPost");
		session.close();// 반납
		return list;
	}
// 메인 페이지 플랫폼 이벤트 배너 3-1

	public List<EventVO> platEvent() {
		SqlSession session = sqlSessionFactory.openSession();
		List<EventVO> list = session.selectList("platEvent");
		session.close();// 반납
		return list;
	}
// 메인 페이지 추천컬렉션 4-1

	public List<CollectionVO> colList() {
		SqlSession session = sqlSessionFactory.openSession();
		List<CollectionVO> list = session.selectList("colList");
		session.close();// 반납
		return list;
	}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////최신 연재 웹툰 정렬/////////////////////////////////////////////////////////////////////

	// 네이버 최신 연재
	public List<WebtoonVO> NewNVWT() {
		SqlSession session = sqlSessionFactory.openSession();
		List<WebtoonVO> list = session.selectList("NewNVWT");
		session.close();// 반납
		return list;
	}

	// 카카오 최신 연재
	public List<WebtoonVO> NewKKWT() {
		SqlSession session = sqlSessionFactory.openSession();
		List<WebtoonVO> list = session.selectList("NewKKWT");
		session.close();// 반납
		return list;
	}

	// 레진 최신 연재
	public List<WebtoonVO> NewLZWT() {
		SqlSession session = sqlSessionFactory.openSession();
		List<WebtoonVO> list = session.selectList("NewLZWT");
		session.close();// 반납
		return list;
	}

	// 탑툰 최신 연재
	public List<WebtoonVO> NewTTWT() {
		SqlSession session = sqlSessionFactory.openSession();
		List<WebtoonVO> list = session.selectList("NewTTWT");
		session.close();// 반납
		return list;
	}

	// 투믹스 최신 연재
	public List<WebtoonVO> NewTMWT() {
		SqlSession session = sqlSessionFactory.openSession();
		List<WebtoonVO> list = session.selectList("NewTMWT");
		session.close();// 반납
		return list;
	}

	// 웹툰 상세페이지
	public WebtoonVO wtGet(int wt_id) {
		SqlSession session = sqlSessionFactory.openSession();
		WebtoonVO wt = session.selectOne("wtGet", wt_id);
		session.close();
		return wt;
	}

}
