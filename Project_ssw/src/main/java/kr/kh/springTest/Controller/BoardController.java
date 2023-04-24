package kr.kh.springTest.Controller;


import java.io.File;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kr.kh.springTest.service.BoardService;
import kr.kh.springTest.service.MemberService;
import kr.kh.springTest.vo.BoardVO;
import kr.kh.springTest.vo.MemberVO;



@Controller
public class BoardController {
	@Autowired
	BoardService boardService;
	MemberService memberService;
	//게시판 조회
	@RequestMapping(value = "/boardList", method = RequestMethod.GET)
	public ModelAndView boardList(ModelAndView mv, BoardVO board, HttpServletRequest request, MemberVO member) throws Exception{

		List<BoardVO> list = boardService.boardLoad(board);
		for(BoardVO bor : list) {
		}
		MemberVO user = (MemberVO)request.getSession().getAttribute("user");
		System.out.println("123");
		mv.addObject("user", user);
		mv.addObject("list", list);
		mv.setViewName("board/boardList");
		return mv;
	}	
	
	//게시판 글쓰기(GET)
	@RequestMapping(value = "/boardInsert", method = RequestMethod.GET)
	public ModelAndView boardInsert(ModelAndView mv, HttpServletRequest request, MemberVO member, BoardVO board) throws Exception{
		MemberVO user = (MemberVO)request.getSession().getAttribute("user");
		//여기서부터 파일 업로드 관련 코드
		String fi_pid = null;
		MultipartFile uploadFile = board.getBo_uploadFile();
			if(!uploadFile.isEmpty()) {
				String originalFileName = uploadFile.getOriginalFilename();
				String ext = FilenameUtils.getExtension(originalFileName);
				
				UUID uuid = UUID.randomUUID();
				fi_pid = uuid+ "." + ext;
				uploadFile.transferTo(new File("D:\\upload\\" + fi_pid));
			}
			board.setFi_pid(fi_pid);
			boardService.boardWriter(board);
			
			mv.addObject("user", user);
			mv.setViewName("board/boardInsert");
			return mv;
	}
	
	//게시판 글쓰기(POST)
	@RequestMapping(value = "/boardInsert", method = RequestMethod.POST)
	public ModelAndView boardInsertPost(ModelAndView mv, BoardVO board) throws Exception{
		int ins = boardService.boardWriter(board);
		if(ins != 0) {
			System.out.println("게시글 등록 완료");
			System.out.println("등록된 게시글 : "+ board);
			mv.setViewName("redirect:/");
		} else {
			System.out.println("게시글 등록 실패");
			mv.setViewName("redirect:/boardInsert");
		}
		return mv;
	}
	

	
	//게시판 상세 페이지
	@RequestMapping(value = "/boardDetail", method = RequestMethod.GET)
	public ModelAndView boardDetail(ModelAndView mv, HttpSession session, BoardVO board, @RequestParam("bo_pid") int bo_pid) throws Exception{
		BoardVO Detail = boardService.boardDetail(bo_pid);
		mv.addObject("Detail", Detail);
		System.out.println("boardDetail 값 : "+Detail);
		mv.setViewName("board/boardDetail");
		return mv;
	}
	
	//게시판 수정
	@RequestMapping(value = "/boardUpdate", method = RequestMethod.GET)
	public ModelAndView boardUpdate(ModelAndView mv, HttpSession session, BoardVO board,
			@RequestParam("bo_pid") int bo_pid) throws Exception{
		BoardVO Detail = boardService.boardDetail(bo_pid);

		mv.addObject("Detail", Detail);
		session.setAttribute("Detail", Detail);
		mv.setViewName("board/boardUpdate");
		return mv;
	}

	//게시판 수정
	@RequestMapping(value = "/boardUpdate", method = RequestMethod.POST)
	public ModelAndView boardUpdatePost(ModelAndView mv, BoardVO board) throws Exception{
		
		int res = boardService.boardUpdate(board);
		System.out.println("res값 확인 보드 : "+res);
		if(res != 0) {
			System.out.println("게시판 수정 완료");
			mv.setViewName("redirect:/");
		} else {
			System.out.println("게시판 수정 실패");
			mv.setViewName("redirect:/boardUpdate");
		}
		return mv;
	}
	
	//게시판 삭제
	@RequestMapping(value = "/boardDelete/{bo_pid}", method = RequestMethod.GET)
	public ModelAndView boardDelete(ModelAndView mv, @PathVariable("bo_pid")int bo_pid) throws Exception{
		
		int res = boardService.boardDelete(bo_pid);
		if(res != 0) {
			System.out.println("게시판 삭제 완료");
			mv.setViewName("redirect:/");
		} else {
			System.out.println("게시판 삭제 실패");
			mv.setViewName("redirect:/boardList");
		}
		return mv;
	}
	



}