package yurim.serviceImp;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import yurim.DTO.ContactDTO;
import yurim.mapper.ContactMapper;
import yurim.service.ContactService;

@Service
public class ContactServiceImp implements ContactService{
	
	@Autowired
	ContactMapper mapper;

	
	@Override
	public int countContact() {
		return mapper.countContact();
	}

	@Override
	public ArrayList<ContactDTO> contactList(int limitStart) {
		return mapper.contactList(limitStart);
	}
	
	
	@Override
	public ContactDTO contactAllList(int num) {
		return mapper.contactAllList(num);
	}

	@Override
	public void contactInsert(String address, String py, String name, String tel, String hopebudget, String comment) {
		mapper.contactInsert(address, py, name, tel, hopebudget, comment);
	}

	@Override
	public void checkOk(int num) {
		mapper.checkOk(num);
		
	}

	@Override
	public void deleteOk(int num) {
		mapper.deleteOk(num);
	}

	
	
}
