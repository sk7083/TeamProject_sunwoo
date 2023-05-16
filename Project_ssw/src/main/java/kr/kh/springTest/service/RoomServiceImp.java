package kr.kh.springTest.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.kh.springTest.dao.RoomDAO;
import kr.kh.springTest.vo.RoomVO;

@Service
public class RoomServiceImp implements RoomService{
	@Autowired
	RoomDAO roomDao;
	
	//상품 전체 리스트
	@Override
	public List<RoomVO> RoomList(RoomVO Room){
		return roomDao.RoomList();
	}
	
	//상품 생성(추가)
	@Override
	public int RoomAdd(RoomVO Room){
		if(Room == null) {
			System.out.println("Room null 발생");
			return 0;
		}
		return roomDao.RoomInsert(Room);
	}
	
	//상품 수정
	@Override
	public int RoomUpdate(RoomVO Room){
		if(Room == null || roomDao.RoomList().size() == 0) {
			return 0;
		}
		return roomDao.RoomUpdate(Room);
	}
	
	//상품 상세 페이지
	@Override
	public RoomVO RoomDetail(int ro_pid){
		if(ro_pid == 0) {
			return null;
		}
		return roomDao.RoomSelect(ro_pid);
	}
	
	//상품 삭제
	@Override
	public int RoomDelete(int ro_pid){
		if(ro_pid == 0) {
			return 0;
		}
	
		return roomDao.RoomDelete(ro_pid);
	}
	
}
