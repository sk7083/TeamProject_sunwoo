package kr.kh.springTest.dao;

import java.util.List;

import kr.kh.springTest.vo.MemberVO;

public interface MemberDAO {
	
	//회원 전체 정보
	public List<MemberVO> selectList();
	
	//회원가입
	int insertMember(MemberVO member);
	
	//로그인
	public MemberVO login(MemberVO member);
	//세션 로그인
	public MemberVO selectMemberById(String string);

	//회원 정보 수정
	public int MemberUpdate(MemberVO member);
	
	//회원 상세 페이지
	public MemberVO MemberSelect(String me_id);
	
	//회원 삭제
	public int MemberDelete(String me_id);
	
	//아이디 중복체크
	public int idCheck(String me_id);
}
