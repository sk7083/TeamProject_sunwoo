package kr.kh.springTest.dao;

import java.util.List;

import kr.kh.springTest.vo.ProductVO;

public interface ProductDAO {
	
	//상품 전체 리스트
	public List<ProductVO> ProductList();
	
	//상품 생성(추가)
	public int ProductInsert(ProductVO product);
	
	//상품 수정
	public int ProductUpdate(ProductVO product);
	
	//상품 상세 페이지
	public ProductVO ProductSelect(int pr_pid);

	//상품 삭제
	public int ProductDelete(int pr_pid);
}
