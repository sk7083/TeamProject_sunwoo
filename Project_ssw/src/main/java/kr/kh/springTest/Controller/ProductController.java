package kr.kh.springTest.Controller;


import java.util.Collections;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mysql.cj.x.protobuf.MysqlxCrud.Collection;

import kr.kh.springTest.service.ProductService;
import kr.kh.springTest.service.RoomService;
import kr.kh.springTest.vo.MemberVO;
import kr.kh.springTest.vo.ProductVO;
import kr.kh.springTest.vo.RoomVO;

@Controller
public class ProductController {
	@Autowired
	ProductService productService;
	@Autowired
	RoomService roomService;

	//================================================================================================

	
//	//메인 화면
//	@RequestMapping(value = "/pro", method = RequestMethod.GET)
//	public ModelAndView home(ModelAndView mv) throws Exception{
////		List <MemberVO> list = memberService.memberLoad();
////		for(int i = 0; i<list.size(); i++) {
////			System.out.println(list.get(i) + "");
////		}
//		mv.setViewName("main/pro");
//		
//		return mv;
//	}	

	//상품 생성(추가) (GET)
	@RequestMapping(value = "/productInsert", method = RequestMethod.GET)
	public ModelAndView ProductInsert(ModelAndView mv, HttpServletRequest request, MemberVO member, ProductVO product) throws Exception{
		//저장된 카테고리 보여주기 위함
		List<ProductVO> list = productService.CategoryList(product);
		MemberVO user = (MemberVO)request.getSession().getAttribute("user");
		mv.addObject("list",list);
		mv.addObject("user", user);
		System.out.println("보낸 user 정보 : " + user);
		mv.setViewName("product/productInsert");
		return mv;
	}
	
	//상품 생성(추가) (POST)
	@RequestMapping(value = "/productInsert", method = RequestMethod.POST)
	public ModelAndView ProductInsertPost(ModelAndView mv, ProductVO product, RoomVO room) throws Exception{
		int pns = productService.productAdd(product);
		int ros = roomService.RoomInsert(room);
		
		if(pns != 0 && ros != 0) {
			System.out.println("상품 등록 완료");
			System.out.println("등록된 상품 : "+ product);
			System.out.println("등록된 방 : "+room);
			mv.setViewName("redirect:/");
		} else {
			System.out.println("상품 등록 실패");
			mv.setViewName("redirect:/");
		}
		return mv;
	}
	
	
	//상품 현황
	@RequestMapping(value = "/productList", method = RequestMethod.GET)
	public ModelAndView prductList(ModelAndView mv, ProductVO product, HttpServletRequest request, MemberVO member) throws Exception{

		List<ProductVO> list = productService.productList(product);
		for(ProductVO bor : list) {
		}
		MemberVO user = (MemberVO)request.getSession().getAttribute("user");
		mv.addObject("user", user);
		mv.addObject("list", list);
		mv.setViewName("product/productList");
		return mv;
	}
	
	
		
	//상품 상세 페이지
	@RequestMapping(value = "/productDetail", method = RequestMethod.GET)
	public ModelAndView productDetail(ModelAndView mv, HttpSession session, ProductVO product, @RequestParam("pr_pid") int pr_pid, @RequestParam("ro_pid") int ro_pid) throws Exception{
		ProductVO Detail = productService.productDetail(pr_pid);
		RoomVO RDetail = roomService.RoomDetail(ro_pid);
		mv.addObject("Detail", Detail);
		mv.addObject("RDetail",RDetail);
		System.out.println("boardDetail 값 : "+Detail);
		mv.setViewName("product/productDetail");
		return mv;
	}
	
	//상품 수정 (GET)
	@RequestMapping(value = "/productUpdate", method = RequestMethod.GET)
	public ModelAndView productUpdate(ModelAndView mv, HttpSession session, ProductVO product,
			@RequestParam("pr_pid") int pr_pid) throws Exception{
		ProductVO Detail = productService.productDetail(pr_pid);

		mv.addObject("Detail", Detail);
		session.setAttribute("Detail", Detail);
		mv.setViewName("product/productUpdate");
		return mv;
	}

	//상품 수정 (POST)
	@RequestMapping(value = "/productUpdate", method = RequestMethod.POST)
	public ModelAndView productUpdatePost(ModelAndView mv, ProductVO product) throws Exception{
		
		int res = productService.productUpdate(product);
		System.out.println("res값 확인 상품 : "+res);
		if(res != 0) {
			System.out.println("상품 수정 완료");
			mv.setViewName("redirect:/");
		} else {
			System.out.println("상품 수정 실패");
			mv.setViewName("redirect:/productUpdate");
		}
		return mv;
	}
	
	//상품 삭제
	@RequestMapping(value = "/productDelete/{pr_pid}", method = RequestMethod.GET)
	public ModelAndView productDelete(ModelAndView mv, @PathVariable("pr_pid")int pr_pid) throws Exception{
		
		int res = productService.productDelete(pr_pid);
		if(res != 0) {
			System.out.println("상품 삭제 완료");
			mv.setViewName("redirect:/");
		} else {
			System.out.println("상품 삭제 실패");
			mv.setViewName("redirect:/productList");
		}
		return mv;
	}
	// ==================================== [상품 페이지] ====================================
	//상품 현황 [모텔]
	@RequestMapping(value = "/motel", method = RequestMethod.GET)
	public ModelAndView prductListMotel(ModelAndView mv, ProductVO product, HttpServletRequest request, MemberVO member) throws Exception{

	        
		List<ProductVO> proList = productService.productList(product);
		for(ProductVO bor : proList) {
		}
		MemberVO user = (MemberVO)request.getSession().getAttribute("user");
		mv.addObject("user", user);
		mv.addObject("proList", proList);
		System.out.println("proList 정보 : "+proList);
		mv.setViewName("product/motel");
		return mv;
	}
	
	
	//상품 현황 [모텔]
	
	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public ModelAndView prducel(ModelAndView mv, RoomVO room) throws Exception{

		mv.setViewName("member/test");
		return mv;
	}
	@RequestMapping(value = "/test", method = RequestMethod.POST)
	public ModelAndView prducelasd(ModelAndView mv, RoomVO room) throws Exception{
		int ros = roomService.RoomInsert(room);
		System.out.println("ros 확인 : "+ros);
	    if(ros != 0) {
	    	System.out.println("성공!");
	    }

		mv.setViewName("member/test");
		return mv;
	}
}
