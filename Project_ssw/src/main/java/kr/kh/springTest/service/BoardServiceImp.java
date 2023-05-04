package kr.kh.springTest.service; 
 
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import Utils.FileUtils;
import kr.kh.springTest.dao.BoardDAO;
import kr.kh.springTest.vo.BoardVO;
import kr.kh.springTest.vo.FileVO; 
 
@Service 
public class BoardServiceImp implements BoardService{ 
	@Autowired 
	BoardDAO boardDao; 
	FileUtils fileUtils;
 
	//게시판 전체 리스트 
	@Override 
	public List<BoardVO> boardLoad(BoardVO board){ 
		return boardDao.BoardList(); 
	} 
	 
	//게시판 글쓰기 
	@Override
	public int boardInsert(BoardVO board){
	    
		if(board == null) {
			return 0;
		}
		boardDao.BoardInsert(board);
			return 1;
	}
	 
	//게시판 수정 
	@Override 
	public int boardUpdate(BoardVO board){ 
		if(board == null || boardDao.BoardList().size() == 0) { 
			return 0; 
		} 
		return boardDao.BoardUpdate(board); 
	} 
	 
	//게시판 상세 페이지 
	@Override 
	public BoardVO boardDetail(int bo_pid){ 
		if(bo_pid == 0) { 
			return null; 
		} 
		return boardDao.BoardSelect(bo_pid); 
	} 
	 
	//게시판 삭제 
	@Override 
	public int boardDelete(int bo_pid){ 
		if(bo_pid == 0) { 
			return 0; 
		} 
	 
		return boardDao.BoardDelete(bo_pid); 
	} 
	 
	//파일 업로드(추가) 
	@Override 
	public int fileInsert(MultipartFile[] file){ 
		if(file == null) { 
			return 0; 
		}
		boardDao.insertFile(file);
		return 1;
	} 
	
	//게시판 전체 리스트 
	@Override 
	public List<BoardVO> boardCategoryList(BoardVO board){ 
		return boardDao.BoCateList(); 
	} 
 
} 
