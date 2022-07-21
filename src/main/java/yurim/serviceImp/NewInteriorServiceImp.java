package yurim.serviceImp;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import yurim.DTO.NewInteriorDTO;
import yurim.mapper.NewInteriorMapper;
import yurim.service.NewInteriorService;

@Service
public class NewInteriorServiceImp implements NewInteriorService {
	
	@Autowired
	NewInteriorMapper mapper;

	@Override
	public ArrayList<NewInteriorDTO> newInteriorList() {
		return mapper.newInteriorList();
	}

	@Override
	public NewInteriorDTO newInteriorSelect(int num) {
		return mapper.newInteriorSelect(num);
	}

	@Override
	public void newInteriorUpdate(int num, String project, String py, String period) {
		mapper.newInteriorUpdate(num, project, py, period);
	}

	@Override
	public void newInteriorAdd(String project, String py, String period) {
		mapper.newInteriorAdd(project, py, period);
	}

	@Override
	public void newInteriorDel(int num) {
		mapper.newInteriorDel(num);
	}

	@Override
	public int maxNum() {
		return mapper.maxNum();
	}

	

	

}
