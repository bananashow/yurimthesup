package yurim.serviceImp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import yurim.DTO.AdminDTO;
import yurim.mapper.AdminMapper;
import yurim.service.AdminService;

@Service
public class AdminServiceImp implements AdminService {
	
	@Autowired
	AdminMapper mapper;

	@Override
	public AdminDTO loginCheck() {
		return mapper.loginCheck();
	}

	
	
}
