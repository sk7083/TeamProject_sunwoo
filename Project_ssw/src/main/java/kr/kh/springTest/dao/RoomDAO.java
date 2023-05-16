package kr.kh.springTest.dao;

import java.util.List;

import kr.kh.springTest.vo.RoomVO;



public interface RoomDAO {
	
	//상품 전체 리스트
	public List<RoomVO> RoomList();
	
	//상품 생성(추가)
	public int RoomInsert(RoomVO Room);
	
	//상품 수정
	public int RoomUpdate(RoomVO Room);
	
	//상품 상세 페이지
	public RoomVO RoomSelect(int ro_pid);

	//상품 삭제
	public int RoomDelete(int ro_pid);
	
}
