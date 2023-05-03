package kr.kh.springTest.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.kh.springTest.dao.ProductDAO;
import kr.kh.springTest.vo.BoardVO;
import kr.kh.springTest.vo.ProductVO;

@Service
public class ProductServiceImp implements ProductService{
	@Autowired
	ProductDAO productDao;
	
	//상품 전체 리스트
	@Override
	public List<ProductVO> productList(ProductVO board){
		return productDao.ProductList();
	}
	
	//상품 생성(추가)
	@Override
	public int productAdd(ProductVO product){
		if(product == null) {
			System.out.println("Product null 발생");
			return 0;
		}
		return productDao.ProductInsert(product);
	}
	
	//상품 수정
	@Override
	public int productUpdate(ProductVO product){
		if(product == null || productDao.ProductList().size() == 0) {
			return 0;
		}
		return productDao.ProductUpdate(product);
	}
	
	//상품 상세 페이지
	@Override
	public ProductVO productDetail(int pr_pid){
		if(pr_pid == 0) {
			return null;
		}
		return productDao.ProductSelect(pr_pid);
	}
	
	//상품 삭제
	@Override
	public int productDelete(int pr_pid){
		if(pr_pid == 0) {
			return 0;
		}
	
		return productDao.ProductDelete(pr_pid);
	}
	
	//카테고리 전체 리스트
	@Override
	public List<ProductVO> CategoryList(ProductVO board){
		return productDao.CategoryList();
	}
}
