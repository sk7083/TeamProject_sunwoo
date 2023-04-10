package kr.kh.springTest.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.kh.springTest.dao.ProductDAO;



@Service
public class ProductServiceImp implements ProductService{
	@Autowired
	ProductDAO productDao;
	
//	//게시판 전체 리스트
//	@Override
//	public List<BoardVO> boardLoad(BoardVO board){
//		return boardDao.BoardList();
//	}
	
}
