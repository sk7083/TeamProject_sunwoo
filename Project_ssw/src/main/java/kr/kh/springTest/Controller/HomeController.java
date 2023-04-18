package kr.kh.springTest.Controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.kh.springTest.service.MemberService;
import kr.kh.springTest.service.MemberServiceImp;
import kr.kh.springTest.vo.MemberVO;


@Controller
public class HomeController {
	@Autowired
	MemberService memberService;

	//메인 화면
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public ModelAndView home(ModelAndView mv) throws Exception{
//		List <MemberVO> list = memberService.memberLoad();
//		for(int i = 0; i<list.size(); i++) {
//			System.out.println(list.get(i) + "");
//		}
		mv.setViewName("main/home");
		
		return mv;
	}	
	
	

	//회원 정보 전체 불러오기
	@RequestMapping(value = "/information", method = RequestMethod.GET)
	public ModelAndView information(ModelAndView mv, MemberVO member, HttpServletRequest request) throws Exception{
		List<MemberVO> list = memberService.memberLoad(member);
		MemberVO user = (MemberVO)request.getSession().getAttribute("user");

		mv.addObject("user", user);
		mv.addObject("list", list);
		mv.setViewName("member/information");
		return mv;
	}	
	
	//회원 상세 페이지
		@RequestMapping(value = "/Detail", method = RequestMethod.GET)
		public ModelAndView boardDetail(ModelAndView mv, HttpSession session, MemberVO member, @RequestParam("me_id") String me_id) throws Exception{
			MemberVO Detail = memberService.memberDetail(me_id);
			mv.addObject("Detail", Detail);
			System.out.println("memberDetail 값 : "+Detail);
			mv.setViewName("member/Detail");
			return mv;
		}

	//회원가입 (GET)
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public ModelAndView registerMember(ModelAndView mv) throws Exception{
		mv.setViewName("member/register");
		return mv;
	}
	
	//회원가입 (POST)
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public ModelAndView registerMemberPost(ModelAndView mv, MemberVO member) throws Exception{
		boolean memberSignup = memberService.registerMember(member);
		if(memberSignup) {
			System.out.println("============================================");
			System.out.println("회원가입 성공");
			System.out.println("============================================");
			mv.setViewName("redirect:/");
		} else {
			System.out.println("============================================");
			System.out.println("회원가입 실패");
			System.out.println("============================================");
			mv.setViewName("redirect:/register");
		}
		return mv;
	}
	
//
//	//로그인 (GET)
//	@RequestMapping(value = "/login", method = RequestMethod.GET)
//	public ModelAndView memberLogin(ModelAndView mv) throws Exception{
//		mv.setViewName("member/login");
//		return mv;
//	}
//
	//로그인 (POST)
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView memberLoginPost(ModelAndView mv, HttpSession session, MemberVO member) throws Exception{
		MemberVO user = memberService.memberLogin(member);
		if(user != null && user.getMe_pw().equals(member.getMe_pw())) {
			//로그인할 경우 권한이 1로 오름 => 권한이 1 이상일 경우 회원 전용 읽기 쓰기 가능
			//로그아웃할 경우 권한 0으로 내릴 것
			
			//로그인이 안된 유저는 권한이 0이지만 로그인할 경우 1로 상승시킴.
			//관리자의 경우 항시 2 상태
			if(user.getMe_auth() == 0) {
				user.setMe_auth(1);
			} else if(user.getMe_auth() == 2) {
				user.setMe_auth(2);
			}
			mv.addObject("user", user);
			System.out.println("성공");
			System.out.println("user값 : "+user);
			//세션에 값 저장
			session.setAttribute("user", user);
			mv.setViewName("redirect:/");
		} else {
			System.out.println("실패");
			mv.setViewName("redirect:/");
		}

		return mv;
	}
	
	//마이페이지
	@RequestMapping(value = "/myPage", method = RequestMethod.GET)
	public ModelAndView myPage(ModelAndView mv, MemberVO member, HttpSession session) throws Exception{
		List<MemberVO> list = memberService.memberLoad(member);
		MemberVO user = memberService.memberLogin(member);

		mv.addObject("user", user);
		mv.addObject("list", list);
		mv.setViewName("member/myPage");
		return mv;
	}
	
	//로그아웃 기능
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public ModelAndView logout(ModelAndView mv, HttpSession session) throws Exception{
		//세션 정보를 전체를 날린다.
		session.invalidate();
		mv.setViewName("redirect:/");
		return mv;
	}
	
	//회원정보 수정 (GET)
	@RequestMapping(value = "/Update", method = RequestMethod.GET)
	public ModelAndView memberUpdate(ModelAndView mv, HttpSession session, MemberVO member, 
			@RequestParam("me_id") String me_id) throws Exception{
		MemberVO Detail = memberService.memberDetail(me_id);
		System.out.println("update에서의 detail 값 : "+Detail);
		mv.addObject("Detail", Detail);
		session.setAttribute("Detail", Detail);
		mv.setViewName("member/Update");
		return mv;
	}

	
	//회원정보 수정 (POST)
	@RequestMapping(value = "/Update", method = RequestMethod.POST)
	public ModelAndView memberUpdatePOST(ModelAndView mv, MemberVO member) throws Exception{		
		System.out.println("=======================================");
		int res = memberService.memberUpdate(member);
		System.out.println("res값 확인 : "+res);
		if(res != 0) {
			System.out.println("회원정보 수정 완료");
			mv.setViewName("redirect:/Detail");
		} else {
			System.out.println("회원정보 수정 실패");
			mv.setViewName("redirect:/information");
		}
		return mv;
	}
	
	//회원 삭제
	@RequestMapping(value = "/Delete/{me_id}", method = RequestMethod.GET)
	public ModelAndView boardDelete(ModelAndView mv, @PathVariable("me_id")String me_id, MemberVO member) throws Exception{
		
		int res = memberService.memberDelete(me_id);
		if(res != 0) {
			System.out.println("회원 삭제 완료");
			mv.setViewName("redirect:/");
		} else {
			System.out.println("회원 삭제 실패");
			mv.setViewName("redirect:/information");
		}
		return mv;
	}
//	================================[화면 구현]================================
	
	//메인화면 (about)
	@RequestMapping(value = "/about", method = RequestMethod.GET)
	public ModelAndView aboutMain(ModelAndView mv) throws Exception{
		
		mv.setViewName("mainPage/about");
		return mv;
	}
	
	//메인화면 (blog)
	@RequestMapping(value = "/blog", method = RequestMethod.GET)
	public ModelAndView blogMain(ModelAndView mv) throws Exception{
		
		mv.setViewName("mainPage/blog");
		return mv;
	}
	
	//메인화면 (blog-single)
	@RequestMapping(value = "/blogSingle", method = RequestMethod.GET)
	public ModelAndView blogSingleMain(ModelAndView mv) throws Exception{
		
		mv.setViewName("mainPage/blogSingle");
		return mv;
	}
	
	//메인화면 (contact)
	@RequestMapping(value = "/contact", method = RequestMethod.GET)
	public ModelAndView contactMain(ModelAndView mv) throws Exception{
		
		mv.setViewName("mainPage/contact");
		return mv;
	}
	
	//메인화면 (gallery)
	@RequestMapping(value = "/gallery", method = RequestMethod.GET)
	public ModelAndView galleryMain(ModelAndView mv) throws Exception{
		
		mv.setViewName("mainPage/gallery");
		return mv;
	}
	
//	========================================================================================

	
//	//메인화면 (index)
//	@RequestMapping(value = "/index", method = RequestMethod.GET)
//	public ModelAndView indexMain(ModelAndView mv) throws Exception{
//		
//		mv.setViewName("mainPage/index");
//		return mv;
//	}
	
	//로그인 (GET)
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView indexLogin(ModelAndView mv) throws Exception{
		mv.setViewName("mainPage/index");
		return mv;
	}

//	//아이디 중복체크
//	@PostMapping("/idCheck")
//	@ResponseBody
//	public int idCheck(@RequestParam("me_id") String me_id) {
//		
//		int cnt = memberService.idCheck(me_id);
//		return cnt;
//		
//	}
	
	@ResponseBody
	@RequestMapping(value = "/idCheck", method = RequestMethod.POST)
	public int idCheck(String me_id) throws Exception {
		int cnt = memberService.idCheck(me_id);
		System.out.println("me_id값 알려줘"+me_id);
		return cnt;
	}
	
	
	
	//로그인 (GET)
	@RequestMapping(value = "/reg", method = RequestMethod.GET)
	public ModelAndView reg(ModelAndView mv) throws Exception{
		mv.setViewName("member/reg");
		return mv;
	}


		
//		========================================================================================
	
	
	//메인화면 (properties)
	@RequestMapping(value = "/properties", method = RequestMethod.GET)
	public ModelAndView propertiesMain(ModelAndView mv) throws Exception{
		
		mv.setViewName("mainPage/properties");
		return mv;
	}
	
	//메인화면_회원가입 (MainRegister)
	@RequestMapping(value = "/MainRegister", method = RequestMethod.POST)
	public ModelAndView MainRegister(ModelAndView mv) throws Exception{
		
		mv.setViewName("mainPage/MainRegister");
		return mv;
	}
	
}
