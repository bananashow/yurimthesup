package yurim.serviceImp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import yurim.mapper.FileMapper;
import yurim.service.FileService;

@Service
public class FileServiceImp implements FileService {

	@Autowired
	FileMapper mapper;

	@Override
	public void fileInsert(String filename, String filepath, int detailImageCount) {
		mapper.fileInsert(filename, filepath, detailImageCount);
	}

	@Override
	public String newInteriorimageCount(int num) {
		return mapper.newInteriorimageCount(num);
	}

	@Override
	public String remodelingCount(int num) {
		return mapper.remodelingCount(num);
	}
	
	
	
	
	
}
