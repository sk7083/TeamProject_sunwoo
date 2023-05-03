package kr.kh.springTest.service;

import java.util.List;

import kr.kh.springTest.vo.ProductVO;

public interface ProductService {

	//상품 전체 리스트
	public List<ProductVO> productList(ProductVO product);

	//상품 생성(추가)
	public int productAdd(ProductVO product);
	
	//상품 수정
	public int productUpdate(ProductVO product);
	
	//상품 상세 페이지
	public ProductVO productDetail(int pr_pid);
	
	//상품 삭제
	public int productDelete(int pr_pid);
	
	//카테고리 전체 리스트
	public List<ProductVO> CategoryList(ProductVO product);
}
