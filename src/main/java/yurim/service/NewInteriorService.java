package yurim.service;

import java.util.ArrayList;

import org.springframework.web.multipart.MultipartFile;

import yurim.DTO.NewInteriorDTO;

public interface NewInteriorService {
	
	//신축 인테리어 리스트
	public ArrayList<NewInteriorDTO> newInteriorList();

	public NewInteriorDTO newInteriorSelect(int num);
	
	//신축 인테리어 수정
	public void newInteriorUpdate(int num, String project, String py, String period);

	//신축 인테리어 목록 추가
	public void newInteriorAdd(String project, String py, String period);
	
	//신축 인테리어 목록 삭제
	public void newInteriorDel(int num);
	
	//가장 큰 num값을 구함
	public int maxNum();

}