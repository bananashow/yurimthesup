package yurim.service;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import yurim.DTO.ContactDTO;

public interface ContactService {
	
	//등록된 문의글 개수
	public int countContact();
	
	//문의글 리스트 전체
	public ArrayList<ContactDTO> contactList(int limitStart);
	
	public ContactDTO contactAllList(int num);
	
	//문의글 작성
	public void contactInsert(String address, String py, String name, String tel, String hopebudget, String comment);

	//문의글 확인완료 상태로 변경
	public void checkOk(int num);
	
	//문의글 삭제
	public void deleteOk(int num);
	
	
}
