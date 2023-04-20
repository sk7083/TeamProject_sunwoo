package kr.kh.springTest.Controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class FileDownloadController {
	
	// 파일 목록 보여주기
	@RequestMapping("/fileDownloadList")
	public ModelAndView fileDownloadList(ModelAndView mv) {
		File path = new File("D:/git/upload");
		String[] fileList = path.list();
		
		mv.addObject("fileList", fileList);
		mv.setViewName("main/fileDownloadListView");
		
		return mv;
	}
	
	// 파일 다운로드 
	@RequestMapping("/fileDownload/{file}")
	public void ModelAndView(@PathVariable String file, 
								HttpServletResponse response) throws IOException {
		System.out.println("들어왔습니다!");
		File f = new File("D:/git/upload", file);

		System.out.println("들어왔습니다222");
		// file 다운로드 설정
		response.setContentType("application/download");
		response.setContentLength((int)f.length());
		response.setHeader("Content-Disposition", "attatchment;filename=\"" + file + "\"");
		System.out.println("들어왔습니다33333");
		// 다운로드 시 저장되는 이름은 Response Header의 "Content-Disposition"에 명시
		OutputStream os = response.getOutputStream();
		System.out.println("들어왔습니다444444444444");
		System.out.println("파일 상태 체크 : "+file);
		FileInputStream fis = new FileInputStream(f);
		System.out.println("파일 상태 비교 : "+fis);
		System.out.println("들어왔습니다5555");
		FileCopyUtils.copy(fis, os);
		System.out.println("들어왔습니다6666666666");
		 fis.close();
		 os.close();
		
	}
}