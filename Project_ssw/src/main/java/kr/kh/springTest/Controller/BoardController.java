package kr.kh.springTest.Controller;


import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
import kr.kh.springTest.vo.FileVO;
import kr.kh.springTest.vo.MemberVO;



@Controller
public class BoardController {
	@Autowired
	BoardService boardService;
	MemberService memberService;
	
	//게시판 조회 (공지사항)
	@RequestMapping(value = "/boardList1", method = RequestMethod.GET)
	public ModelAndView boardList1(ModelAndView mv, BoardVO board, HttpServletRequest request, MemberVO member) throws Exception{
		//게시판 카테고리 불러오기
		List<BoardVO> boCate = boardService.boardCategoryList(board);
		//게시판 전체 불러오기
		List<BoardVO> list = boardService.boardLoad(board);
		for(BoardVO bor : list) {
		}
		MemberVO user = (MemberVO)request.getSession().getAttribute("user");
		
		mv.addObject("boCate", boCate);
		mv.addObject("user", user);
		mv.addObject("list", list);
		mv.setViewName("board/boardList1");
		return mv;
	}
	
	//게시판 조회 (문의사항)
	@RequestMapping(value = "/boardList2", method = RequestMethod.GET)
	public ModelAndView boardList2(ModelAndView mv, BoardVO board, HttpServletRequest request, MemberVO member) throws Exception{
		//게시판 카테고리 불러오기
		List<BoardVO> boCate = boardService.boardCategoryList(board);
		//게시판 전체 불러오기
		List<BoardVO> list = boardService.boardLoad(board);
		for(BoardVO bor : list) {
		}
		MemberVO user = (MemberVO)request.getSession().getAttribute("user");
		
		mv.addObject("boCate", boCate);
		mv.addObject("user", user);
		mv.addObject("list", list);
		mv.setViewName("board/boardList2");
		return mv;
	}
	
	//게시판 조회 (이벤트)
	@RequestMapping(value = "/boardList3", method = RequestMethod.GET)
	public ModelAndView boardList3(ModelAndView mv, BoardVO board, HttpServletRequest request, MemberVO member) throws Exception{
		//게시판 카테고리 불러오기
		List<BoardVO> boCate = boardService.boardCategoryList(board);
		//게시판 전체 불러오기
		List<BoardVO> list = boardService.boardLoad(board);
		for(BoardVO bor : list) {
		}
		MemberVO user = (MemberVO)request.getSession().getAttribute("user");
		
		mv.addObject("boCate", boCate);
		mv.addObject("user", user);
		mv.addObject("list", list);
		mv.setViewName("board/boardList3");
		return mv;
	}
	
	//게시판 글쓰기(GET)
	@RequestMapping(value = "/boardInsert", method = RequestMethod.GET)
	public ModelAndView boardInsert(ModelAndView mv, HttpServletRequest request, MemberVO member, BoardVO board) throws Exception{
		//게시판 카테고리 불러오기
		List<BoardVO> boCate = boardService.boardCategoryList(board);
		MemberVO user = (MemberVO)request.getSession().getAttribute("user");
			
			System.out.println("넘겨준 boCate값 확인 : "+boCate);
			mv.addObject("boCate", boCate);
			mv.addObject("user", user);
			mv.setViewName("board/boardInsert");
			return mv;
	}
	
	//게시판 글쓰기(POST)
	@RequestMapping(value = "/boardInsert", method = RequestMethod.POST)
	public ModelAndView boardInsertPost(ModelAndView mv, BoardVO board, MultipartFile[] file) throws Exception{
		
		int bes = boardService.boardInsert(board);
		
//	 String filePath  = "D:\\upload\\";	
//	 int bo_pid = board.getBo_pid();
//	 String fi_crea_id = board.getBo_writer();
//	 
//	 for(int i=0; i<file.length; i++) {		 
//		 String fi_ori_name = file[i].getOriginalFilename();
//		 long fi_size = file[i].getSize();
//		 System.out.println("fi_ori_name 값 : " + fi_ori_name);
//		 System.out.println("fi_size 값 : " + fi_size);
//	 }
//	 
//	 
//	 System.out.println("filePath 값 : " + filePath);
//	 System.out.println("bo_pid 값 : " + bo_pid);
//	 System.out.println("fi_crea_id 값 : " + fi_crea_id);
//	 System.out.println("최종 board 값 : "+board);
//	 System.out.println("최종 file 값 : "+file);
	

	 System.out.println("board값 체크 : [boardController] : " + board);
	 System.out.println("file값 체크 : [boardController] : " + file);

		if(bes != 0) {
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
		//게시판 카테고리 불러오기
		List<BoardVO> boCate = boardService.boardCategoryList(board);
		BoardVO Detail = boardService.boardDetail(bo_pid);
		mv.addObject("Detail", Detail);
		mv.addObject("boCate", boCate);
		System.out.println("boCate 값 알려줘 : "+boCate);
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
	public ModelAndView boardUpdatePost(ModelAndView mv, BoardVO board, @RequestParam("bo_pid") int bo_pid) throws Exception{
		boardService.boardDetail(bo_pid);
		int res = boardService.boardUpdate(board);
		System.out.println("res값 확인 보드 : "+res);
		if(res != 0) {
			System.out.println("게시판 수정 완료");
			mv.setViewName("redirect:/boardDetail?bo_pid="+bo_pid+"#tel123");
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