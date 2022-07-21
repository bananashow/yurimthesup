package yurim.service;

import java.util.ArrayList;

import yurim.DTO.RemodelingDTO;

public interface RemodelingService {

	public ArrayList<RemodelingDTO> remodelingList();
	
	public RemodelingDTO remodelingSelect(int num);

	//리모델링 수정
	public void remodelingUpdate(int num, String project, String py, String period);

	//리모델링 목록 추가
	public void remodelingAdd(String project, String py, String period);
	
	//리모델링 목록 삭제
	public void remodelingDel(int num);
	
	//가장 큰 num값을 구함
	public int maxNum();
}
