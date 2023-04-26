package kr.kh.springTest.Controller;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class FileController {
	
	// 파일 업로드 폼
	@RequestMapping("/fileUploadForm")
	public String fileUploadFormView() {
		return "main/fileUploadForm";
	}
		
	//파일 업로드 2
	@PostMapping("/fileUploadForm")
	public String upload(@RequestParam("file") MultipartFile file) {
		String fileRealName = file.getOriginalFilename(); //파일명을 얻어낼 수 있는 메서드!
		long size = file.getSize(); //파일 사이즈
		
		System.out.println("파일명 : "  + fileRealName);
		System.out.println("용량크기(byte) : " + size);
		//서버에 저장할 파일이름 fileextension으로 .jsp이런식의  확장자 명을 구함
		String fileExtension = fileRealName.substring(fileRealName.lastIndexOf("."),fileRealName.length());
		String uploadFolder = "C:\\test\\upload";
		

		/*
		  파일 업로드시 파일명이 동일한 파일이 이미 존재할 수도 있고 사용자가 
		  업로드 하는 파일명이 언어 이외의 언어로 되어있을 수 있습니다. 
		  타인어를 지원하지 않는 환경에서는 정산 동작이 되지 않습니다.(리눅스가 대표적인 예시)
		  고유한 랜던 문자를 통해 db와 서버에 저장할 파일명을 새롭게 만들어 준다.
		 */
		
		UUID uuid = UUID.randomUUID();
		System.out.println(uuid.toString());
		String[] uuids = uuid.toString().split("-");
		
		String uniqueName = uuids[0];
		System.out.println("생성된 고유문자열" + uniqueName);
		System.out.println("확장자명" + fileExtension);
		
		// File saveFile = new File(uploadFolder+"\\"+fileRealName); uuid 적용 전
		
		File saveFile = new File(uploadFolder+"\\"+uniqueName + fileExtension);  // 적용 후
		try {
			file.transferTo(saveFile); // 실제 파일 저장메서드(filewriter 작업을 손쉽게 한방에 처리해준다.)
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		String fi_ori_name = fileExtension;
		String fi_name = fileRealName;
		long fi_size = size;
		
		System.out.println("fi_ori_name 값" + fi_ori_name);
		System.out.println("fi_name 값" + fi_name);
		System.out.println("fi_size 값" + fi_size);
		return "/";
	}
	
	
	
//	// 파일 업로드
//		@RequestMapping(value = "/fileUploadForm", method = RequestMethod.POST)
//		public ModelAndView fileUpLoadView(@RequestParam("uploadFile") MultipartFile file, ModelAndView mv) 
//					throws IOException {
//			
//			
//			// 1. 파일 저장 경로 설정 : 실제 서비스되는 위치(프로젝트 외부에 저장)
//			String uploadPath = "D:\\git\\upload\\save/";
//			// 마지막에 / 있어야함
//			
//			// 2. 원본 파일 이름 알아오기
//			String originalFileName = file.getOriginalFilename();
//			
//			// 3. 파일 이름이 중복되지 않도록 파일 이름 변경 : 서버에 저장할 이름
//			// UUID 클래스 사용
//			UUID uuid = UUID.randomUUID();
//			String savedFileName = uuid.toString() + "_" + originalFileName;
//			
//			// 4. 파일 생성
//			File newFile = new File(uploadPath + savedFileName);
//			
//			// 5. 서버로 전송
//			file.transferTo(newFile);
//			
//			// Model 설정 : 뷰 페이지에서 원본 파일 이름 출력
//			mv.addObject("originalFileName", originalFileName);
//			mv.setViewName("main/fileUploadResult");
//			return mv;
//		}
		
		//메인 화면
		@RequestMapping(value = "/fileUploadResult", method = RequestMethod.GET)
		public ModelAndView fileUploadResult(ModelAndView mv) throws Exception{
			
			mv.setViewName("main/fileUploadResult");
			
			return mv;
		}	
		
	}

	

