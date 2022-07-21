package yurim.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import yurim.DTO.AdminDTO;

@Mapper
public interface AdminMapper {
	
	@Select("select * from admin")
	public AdminDTO loginCheck();

}
