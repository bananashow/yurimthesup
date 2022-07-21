package yurim.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import yurim.DTO.ContactDTO;

@Mapper
public interface ContactMapper {
	
	//등록된 문의글 개수
	@Select("select count(*) from contact")
	public int countContact();
	
	@Select("select * from contact where num=${num}")
	public ContactDTO contactAllList(@Param("num") int num);

	@Select("select * from contact order by num desc limit ${limitStart}, 10")
	public ArrayList<ContactDTO> contactList(@Param("limitStart") int limitStart);
	
	//문의글 추가
	@Insert("insert into contact(address, py, name, tel, hopebudget, comment, date) values(#{address}, #{py}, #{name}, #{tel}, #{hopebudget}, #{comment}, sysdate())")
	public void contactInsert(@Param("address") String address, @Param("py") String py, @Param("name") String name, @Param("tel") String tel, @Param("hopebudget") String hopebudget, @Param("comment") String comment);
	
	//문의글 확인완료 상태로 변경
	@Update("update contact set checkstate='확인완료' where num=${num}")
	public void checkOk(@Param("num") int num);
	
	//문의글 삭제
	@Delete("delete from contact where num=${num}")
	public void deleteOk(@Param("num") int num);
	
}
