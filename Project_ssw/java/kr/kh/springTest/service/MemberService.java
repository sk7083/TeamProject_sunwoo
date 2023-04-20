package kr.kh.springTest.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import kr.kh.springTest.vo.BoardVO;
import kr.kh.springTest.vo.MemberVO;


public interface MemberService {
	//회원 전체 정보 불러오기
	public List<MemberVO> memberLoad(MemberVO member);
	//회원가입
	public boolean registerMember(MemberVO member);
	//회원 로그인
	public MemberVO memberLogin(MemberVO member);

	//회원 정보 수정
	public int memberUpdate(MemberVO member);
	
	//회원 상세 페이지
	public MemberVO memberDetail(String me_id);
	
	//회원 삭제
	public int memberDelete(String me_id);
	
	//아이디 중복체크
	public int idCheck(String me_id);
}
