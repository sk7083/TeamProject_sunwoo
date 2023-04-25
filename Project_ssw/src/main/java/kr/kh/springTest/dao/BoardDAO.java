package kr.kh.springTest.dao;

import java.util.List;
import java.util.Map;

import kr.kh.springTest.vo.BoardVO;


public interface BoardDAO {
	
	//게시판 전체 리스트
	public List<BoardVO> BoardList();
	
	//게시판 글쓰기
	public int BoardInsert(BoardVO board);
	
	//게시판 수정
	public int BoardUpdate(BoardVO board);
	
	//게시판 상세 페이지
	public BoardVO BoardSelect(int bo_pid);

	//게시판 삭제
	public int BoardDelete(int bo_pid);
	
	//파일 업로드(추가)
	public void insertFile(Map<String, Object> map);

}
