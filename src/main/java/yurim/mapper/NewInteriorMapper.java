package yurim.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import yurim.DTO.NewInteriorDTO;

@Mapper
public interface NewInteriorMapper {

	//신축 인테리어 리스트
	@Select("select * from newinterior")
	public ArrayList<NewInteriorDTO> newInteriorList();
	
	@Select("select * from newinterior where num = #{num}")
	public NewInteriorDTO newInteriorSelect(@Param("num") int num);
	
	//신축 인테리어 수정
	@Update("update newinterior set project=#{project}, py=#{py}, period=#{period} where num=#{num}")
	public void newInteriorUpdate(@Param("num") int num, @Param("project") String project, @Param("py") String py, @Param("period") String period);

	//신축 인테리어 목록 추가
	@Insert("insert into newinterior(project, py, period) values(#{project}, #{py}, #{period})")
	public void newInteriorAdd(@Param("project") String project, @Param("py") String py, @Param("period") String period);
	
	//신축 인테리어 목록 삭제
	@Delete("delete from newinterior where num = #{num}")
	public void newInteriorDel(@Param("num") int num);
	
	//가장 큰 num값을 구함
	@Select("select max(num) from newinterior")
	public int maxNum();
}