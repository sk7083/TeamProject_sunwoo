package kr.kh.springTest.Controller;

import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.kh.springTest.service.MemberService;
import kr.kh.springTest.vo.BoardVO;

import java.io.BufferedReader;
import java.io.IOException;
@Controller
public class ApiExplorer {
	
//메인 화면
@RequestMapping(value = "/check", method = RequestMethod.GET)
public ModelAndView home(ModelAndView mv) throws Exception{
	
	StringBuilder urlBuilder = new StringBuilder("http://openapi.seoul.go.kr:8088/sample/json/LOCALDATA_031103/1/5/"); 
	/*URL*/
	urlBuilder.append("/" + URLEncoder.encode("706d424347736b3739346854515366","UTF-8") ); /*인증키
	(sample사용시에는 호출시 제한됩니다.)*/
	urlBuilder.append("/" + URLEncoder.encode("json","UTF-8") ); /*요청파일타입
	(xml,xmlf,xls,json) */
	urlBuilder.append("/" + URLEncoder.encode("LOCALDATA_031103","UTF-8")); 
	/*서비스명 (대소문자 구분 필수입니다.)*/
	urlBuilder.append("/" + URLEncoder.encode("1","UTF-8")); /*요청시작위치
	(sample인증키 사용시 5이내 숫자)*/
	urlBuilder.append("/" + URLEncoder.encode("1","UTF-8")); 
	/*요청종료위치(sample인증키 사용시 5이상 숫자 선택 안 됨)*/
	// 상위 5개는 필수적으로 순서바꾸지 않고 호출해야 합니다.
	// 서비스별 추가 요청 인자이며 자세한 내용은 각 서비스별 '요청인자'부분에 자세히 나와 있습니다.
	
	//추가 요청 사항
	urlBuilder.append("&" + URLEncoder.encode("numOfRows","UTF-8") + "=" + URLEncoder.encode("10", "UTF-8")); /*한 페이지 결과 수*/
    urlBuilder.append("&" + URLEncoder.encode("pageNo","UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /*페이지 번호*/
    urlBuilder.append("&" + URLEncoder.encode("stationName","UTF-8") + "=" + URLEncoder.encode("수내동", "UTF-8")); /*측정소 이름*/
	
	
//	urlBuilder.append("/" + URLEncoder.encode("","UTF-8")); 
	/* 서비스별 추가 요청인자들*/

		URL url = new URL(urlBuilder.toString());
		HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		conn.setRequestMethod("GET");
		conn.setRequestProperty("Content-type", "application/json");
		System.out.println("Response code: " + conn.getResponseCode()); 
		/* 연결자체에 대한 확인이 필요하므로 추가합니다.*/
		BufferedReader rd;
		
		// 서비스코드가 정상이면 200~300사이의 숫자가 나옵니다.
		if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
		rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
		} else {
		rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
		}
		StringBuilder sb = new StringBuilder();
		String line;
		while ((line = rd.readLine()) != null) {
		sb.append(line);
		}
		rd.close();
		conn.disconnect();
		
		System.out.println("============================================ 테스트 확인 ============================================");
		System.out.println("sb값 : " + sb);
		System.out.println("rd값 : " + rd);
		System.out.println(sb.toString() + "==================================");
		

		
		mv.addObject("sb", sb);
		mv.setViewName("main/check");
		return mv;
	}
}