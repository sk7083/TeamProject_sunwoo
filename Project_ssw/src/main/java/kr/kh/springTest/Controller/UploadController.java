package kr.kh.springTest.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kr.kh.springTest.service.BoardService;
import kr.kh.springTest.vo.BoardVO;

@Controller
public class UploadController {
	@Autowired
	BoardService boardService;
	
	 @RequestMapping("/upload")
	    public ModelAndView boardInsert(BoardVO board, MultipartFile[] file, ModelAndView mv) throws Exception {
		 
		 
	        mv.setViewName("board/boardList");
	        return mv;
	    }
	}

	

