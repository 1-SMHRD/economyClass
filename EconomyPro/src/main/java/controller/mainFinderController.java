package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UtoonDAO;
import dao.WebtoonVO;

public class mainFinderController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// explore filter nav 에서 받아올 filter 값들
		UtoonDAO dao = new UtoonDAO(); //dao 선언
		
		WebtoonVO vo = new WebtoonVO(); // 결국 여기서 보내줄 값은 webtoonVO 요소들이므로 선언해준다
		
		//explore view에서 입력 받은 필터요소
		// 1. exlplore view의 platform checkbox 에서 name ="PLAT" 인 중복 플랫폼 값들
		// 1-1. 배열형식으로 상기처럼 받아옴 플랫폼 값을 stringList에 받는다
		// 초기값은 공란으로 선언해서 추후 받은 값들이 있을 시 반복문으로 채워줄 것이다 - 배열값들을 string 합산할것 sql 쿼리에 적합하게
		// 2. explore view 에서 select 를 통해 받아온 작품 장르 값 name = "themes"
		String keyWord = request.getParameter("keyWord");
		if(keyWord==null) {
			keyWord = "";
		}
		String keyWordForm ="'%"+keyWord+"%'"; 
		
		// 3. explore view 에서 select 를 통해 받아온 작품 좋아요 비율 값
		// 플랫폼 정보와 마찬 가지로 초기값은 0으로 두어 혹여나 값이 없을 시 0으로 대체 되도록 하였다.
		
		// try문으로 혹여나 point 값이 없는 작품들에 대한 예외 상황을 처리해 준다.
		
		//웹툰 모델형식의 결과값 중 point(모델에 setter가 있어야한다)를 상기 처리된 point로 설정
		vo.setWt_title(keyWordForm);
		vo.setWt_auth(keyWordForm);
		vo.setWt_gen(keyWordForm);
		//장르도 마찬가지
		
		
		System.out.println(keyWordForm);
		System.out.println(keyWord);
		// "'NV01','KK01','LZ01','TT01','TM01'," 이런식으로 마지막에 ,는 쿼리문에서 불필요 하므로 substring으로 지워준다.
		// vo 형식 중 plat_id를 위의 가공된 string으로 넣어준다.
		
		// 상기 1,2,3 데이터 들을 담은 vo를 해당 필터 기능이 있는 DAO - mapper의 쿼리로 연결시켜준다.
		// mapper 에 filterListWT id를 가진 select 태그를 확인해보면 안에 ${}, #{} 태그안에 여기서 보내준 값이
		// 적용되는 것을 알 수 있다.
		// 그리고 그 결과 값을 다시 WebtoonVO 형식의 List에 담아준다.
		List<WebtoonVO> list =  dao.findListWT(vo);
		
		//선언다하고
		// dao.기능이름()
		//상기 결과 값 이 담긴(필터링에 해당하는 모든 작품 인스턴스들) list를 다시 setAttribute로 객체 바인딩 해준다
		//explore view에서 바인딩된 list 값을 ${}를 통해 받아서 쓸 수 있다. 
		request.setAttribute("list", list);
		System.out.println(list.size());
		return "explore";
	}

}
