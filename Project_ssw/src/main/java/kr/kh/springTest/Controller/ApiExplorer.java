
package kr.kh.springTest.Controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import com.mysql.cj.xdevapi.JsonArray;
import com.mysql.cj.xdevapi.JsonParser;

public class ApiExplorer {
	public static void main(String[] args) throws IOException, ParseException {
		
        		
		StringBuilder urlBuilder = new StringBuilder("http://openapi.seoul.go.kr:8088/795744595a736b3739386e45524543/json/LOCALDATA_031101/1/5/"); /*URL*/
		urlBuilder.append("/" +  URLEncoder.encode("795744595a736b3739386e45524543","UTF-8") ); /*인증키 (sample사용시에는 호출시 제한됩니다.)*/
		urlBuilder.append("/" +  URLEncoder.encode("json","UTF-8") ); /*요청파일타입 (xml,xmlf,xls,json) */
		urlBuilder.append("/" + URLEncoder.encode("LOCALDATA_031101","UTF-8")); /*서비스명 (대소문자 구분 필수입니다.)*/
		urlBuilder.append("/" + URLEncoder.encode("1","UTF-8")); /*요청시작위치 (sample인증키 사용시 5이내 숫자)*/
		urlBuilder.append("/" + URLEncoder.encode("5","UTF-8")); /*요청종료위치(sample인증키 사용시 5이상 숫자 선택 안 됨)*/
		// 상위 5개는 필수적으로 순서바꾸지 않고 호출해야 합니다.
		
		// 서비스별 추가 요청 인자이며 자세한 내용은 각 서비스별 '요청인자'부분에 자세히 나와 있습니다.
//		urlBuilder.append("/" + URLEncoder.encode("20220301","UTF-8")); /* 서비스별 추가 요청인자들*/
		
		URL url = new URL(urlBuilder.toString());
		HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		conn.setRequestMethod("GET");
		conn.setRequestProperty("Content-type", "application/json");
		System.out.println("Response code: " + conn.getResponseCode()); /* 연결 자체에 대한 확인이 필요하므로 추가합니다.*/
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
		 System.out.println(sb.toString());
		 System.out.println("=================================");
		 
		 
		 JSONParser parser = new JSONParser();
		 
		 Object obj =  parser.parse(sb.toString());


		 
//		 JSONObject obj = (JSONObject) parser.parse(sb);
		 
//		 System.out.println("확인 : "+obj.get("BPLCNM"));
		 
//		 JSONArray jsonarray = (JSONArray) parser.parse(rd);
//		 for(int i =0; i<jsonarray.size(); i++) {
//			 JSONObject obj = (JSONObject) jsonarray.get(i);
//			 String BPLCNM = (String) obj.get("BPLCNM");
//			 sb.append(BPLCNM+"");
//		 }
//		 System.out.println(sb.toString());
		 

		 
		 
//		 JsonParser parser = new JsonParser();
//		 
//		  JSONParser parser = new JSONParser();
//		  System.out.println("parser 확인 : "+parser);
//	       Object obj = parser.parse(sb.toString()); 
	       
//	       System.out.println("obj 확인 : "+obj);
//	       // obj를 JsonArray로 cast
//	        JSONArray jsonArr = (JSONArray)obj;
//	        System.out.println("jsonArr 확인 : "+jsonArr);
//	        if (jsonArr.size() > 0){
//	            for(int i=0; i<jsonArr.size(); i++){
//	                JSONObject jsonObj = (JSONObject)jsonArr.get(i);
//	                
//	                
//	                System.out.println((String)jsonObj.get("BPLCNM")); 
//	            }
//	            // StudyingAzae, Soodal 출력
//	        }     
//		 JSONObject jsonMain = (JSONObject)obj;
//		 
//		 System.out.println("확인" + jsonMain.get(jsonMain));
	}
}