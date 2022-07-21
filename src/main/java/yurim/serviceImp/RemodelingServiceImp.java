package yurim.serviceImp;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import yurim.DTO.NewInteriorDTO;
import yurim.DTO.RemodelingDTO;
import yurim.mapper.RemodelingMapper;
import yurim.service.RemodelingService;

@Service
public class RemodelingServiceImp implements RemodelingService{
	
	@Autowired
	RemodelingMapper mapper;

	@Override
	public ArrayList<RemodelingDTO> remodelingList() {
		return mapper.remodelingList();
	}

	@Override
	public RemodelingDTO remodelingSelect(int num) {
		return mapper.remodelingSelect(num);
	}

	@Override
	public void remodelingUpdate(int num, String project, String py, String period) {
		mapper.remodelingUpdate(num, project, py, period);
	}

	@Override
	public void remodelingAdd(String project, String py, String period) {
		mapper.remodelingAdd(project, py, period);
	}

	@Override
	public void remodelingDel(int num) {
		mapper.remodelingDel(num);
	}

	@Override
	public int maxNum() {
		return mapper.maxNum();
	}
	
}
