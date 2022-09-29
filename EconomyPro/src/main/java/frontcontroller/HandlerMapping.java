package frontcontroller;

import java.util.HashMap;

import controller.Controller;
import controller.collectionController;
import controller.collectionDetailController;
import controller.communityController;
import controller.editProfileController;
import controller.editProfileFormController;
import controller.exploreController;
import controller.exploreFilterController;
import controller.loginController;
import controller.loginFormController;
import controller.mainPageController;
import controller.myPCommentController;
import controller.myPageController;
import controller.myPostController;
import controller.myRCommentController;
import controller.myReviewController;
import controller.myScrapController;
import controller.newProfileController;
import controller.newToonController;
import controller.postDeleteController;
import controller.postDetailController;
import controller.postUpdateController;
import controller.postUpdateFormController;
import controller.postWriteController;
import controller.postWriteFormController;
import controller.reviewDetailController;
import controller.searchAjaxController;
import controller.searchController;
import controller.toonDetailController;
import controller.totalRankingController;

public class HandlerMapping {

	private HashMap<String, Controller> mappings;
	
	public HandlerMapping() {
		
		mappings = new HashMap<String, Controller>();
				
		// 로그인페이지 맵핑
		mappings.put("/login.do",new loginController());
		mappings.put("/newProfile.do",new newProfileController());
		mappings.put("/loginForm.do",new loginFormController());
		
		// 기본페이지 맵핑
		mappings.put("/mainPage.do",new mainPageController());
		mappings.put("/search.do",new searchController());
		mappings.put("/totalRanking.do",new totalRankingController());
		mappings.put("/community.do",new communityController());
		mappings.put("/collection.do",new collectionController());
		mappings.put("/explore.do",new exploreController());
		mappings.put("/exploreFilter.do",new exploreFilterController()); // 필터 콘트롤러 추가_현범
		mappings.put("/newToon.do",new newToonController());
		mappings.put("/myPage.do",new myPageController());
				
		// 상세페이지 맵핑
		mappings.put("/toonDetail.do",new toonDetailController());
		mappings.put("/postDetail.do",new postDetailController());
		mappings.put("/reviewDetail.do",new reviewDetailController());
		mappings.put("/collectionDetail.do",new collectionDetailController());
		
		// 프로필 수정, 내 게시글, 내 리뷰, 내 게시글 댓글, 내 리뷰 댓글, 스크랩 리스트 맵핑		
		mappings.put("/editProfile.do",new editProfileController());
		mappings.put("/editProfileForm.do",new editProfileFormController());
		mappings.put("/myScrap.do",new myScrapController());
		mappings.put("/myPost.do",new myPostController());
		mappings.put("/myReview.do",new myReviewController());
		mappings.put("/myPComment.do",new myPCommentController());
		mappings.put("/myRComment.do",new myRCommentController());
		
		mappings.put("/postWrite.do",new postWriteController());
		mappings.put("/postWriteForm.do",new postWriteFormController());
		mappings.put("/postDelete.do",new postDeleteController());
		mappings.put("/postUpdate.do",new postUpdateController());
		mappings.put("/postUpdateForm.do",new postUpdateFormController());
		
		
		// 에이잭스 맵핑
		mappings.put("/searchAjax.do",new searchAjaxController());
		
		
		
		
		
		
		
		
		
	}
	
	public Controller getController(String key) {
		return mappings.get(key);
	}
	
}
