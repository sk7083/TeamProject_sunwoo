package kr.kh.springTest.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kr.kh.springTest.service.BoardService;

@Controller
public class UploadController {
	@Autowired
	BoardService boardService;
	
	 @RequestMapping("/boardInsert")
	    public ModelAndView boardInsert(CommandMap commandMap, MultipartFile[] file, ModelAndView mv) throws Exception {
	        boardService.insertBoard(commandMap, file);
//	        for(int i=0; i<file.length; i++) {
//	            System.out.println("================== file start ==================");
//	            System.out.println("파일 이름: "+file[i].getName());
//	            System.out.println("파일 실제 이름: "+file[i].getOriginalFilename());
//	            System.out.println("파일 크기: "+file[i].getSize());
//	            System.out.println("content type: "+file[i].getContentType());
//	            System.out.println("================== file   END ==================");
//	        }
	        
	        mv.setViewName("board/boardList");
	        return mv;
	    }
	}

	

