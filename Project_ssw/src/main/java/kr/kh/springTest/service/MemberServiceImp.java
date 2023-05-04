package kr.kh.springTest.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.kh.springTest.dao.BoardDAO;
import kr.kh.springTest.dao.MemberDAO;
import kr.kh.springTest.vo.BoardVO;
import kr.kh.springTest.vo.MemberVO;

@Service
public class MemberServiceImp implements MemberService{
	@Autowired
	MemberDAO memberDao;
	
	//회원 전체 불러오기
	@Override
	public List<MemberVO> memberLoad(MemberVO member) {
		
		return memberDao.selectList();
	}
	
	//회원가입
	@Override
	public boolean registerMember(MemberVO member) {
		if(member == null) {
			return false;
		}
		if(memberDao.insertMember(member) != 0) {
			return true;
		} else {
			return false;
		}

	}

	
	//회원 로그인
	@Override
	public MemberVO memberLogin(MemberVO member) {
		if(member == null || member.getMe_id() == null || member.getMe_pw() == null) {
			return null;
		}
		MemberVO dbMember = memberDao.selectMemberById(member.getMe_id());
		if(dbMember == null) {
			return null;
		}
		
		if(member.getMe_pw().equals(dbMember.getMe_pw()) ||
				member.getMe_id().equals(dbMember.getMe_id())) {
			return dbMember;
		}
		System.out.println("아이디 / 비밀번호가 잘못됐습니다.");
		return null;
	}
	
	
	
	//회원정보 수정
	@Override
	public int memberUpdate(MemberVO member){
		if(member == null) {
			return 0;
		}
		return memberDao.MemberUpdate(member);
	}
	
	//회원 상세 정보
	@Override
	public MemberVO memberDetail(String me_id){
		if(me_id == null) {
			System.out.println("null 발생했습니다.");
			return null;
		}
		return memberDao.MemberSelect(me_id);
	}
	
	//회원 삭제
	@Override
	public int memberDelete(String me_id){
		if(me_id == null) {
			return 0;
		}
	
		return memberDao.MemberDelete(me_id);
	}
	
	//아이디 중복체크
	@Override
	public int idCheck(String me_id) {
		
		int result = memberDao.idCheck(me_id);
		return result;
	}
}
