package kr.kh.springTest.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import kr.kh.springTest.vo.BoardVO;
import kr.kh.springTest.vo.FileVO;

public interface BoardService {

	//게시판 전체 리스트
	public List<BoardVO> boardLoad(BoardVO board);

	//게시판 글쓰기
	public int boardInsert(BoardVO board);
	
	//게시판 수정
	public int boardUpdate(BoardVO board);
	
	//게시판 상세 페이지
	public BoardVO boardDetail(int bo_pid);
	
	//게시판 삭제
	public int boardDelete(int bo_pid);

	//파일 업로드(추가)
	public int fileInsert(MultipartFile[] file) throws Exception;
}
