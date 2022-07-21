package yurim.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface FileMapper {

	@Insert("insert into file values(#{filename},#{filepath},${detailImageCount})")
	public void fileInsert(@Param("filename") String filename, @Param("filepath") String filepath, @Param("detailImageCount") int detailImageCount);

	//newInterior num에 해당하는 이미지파일의 개수를 가져옴
	@Select("select count(*) from file where filename like 'newInteriorDetail${num}%'")
	public String newInteriorimageCount(@Param("num") int num);
	
	//remodeling num에 해당하는 이미지파일의 개수를 가져옴
	@Select("select count(*) from file where filename like 'remodelingDetail${num}%'")
	public String remodelingCount(@Param("num") int num);
}
