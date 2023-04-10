package kr.kh.springTest.Controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.servlet.ModelAndView;

import kr.kh.springTest.service.MemberService;

@Controller
public class ProductController {
	@Autowired
	MemberService memberService;

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

}
