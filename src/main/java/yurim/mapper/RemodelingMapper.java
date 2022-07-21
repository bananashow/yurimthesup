package yurim.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import yurim.DTO.RemodelingDTO;

@Mapper
public interface RemodelingMapper {
	
	@Select("select * from remodeling")
	public ArrayList<RemodelingDTO> remodelingList();
	
	@Select("select * from remodeling where num = #{num}")
	public RemodelingDTO remodelingSelect(@Param("num") int num);

	//리모델링 수정
	@Update("update remodeling set project=#{project}, py=#{py}, period=#{period} where num=#{num}")
	public void remodelingUpdate(@Param("num") int num, @Param("project") String project, @Param("py") String py, @Param("period") String period);

	//리모델링 목록 추가
	@Insert("insert into remodeling(project, py, period) values(#{project}, #{py}, #{period})")
	public void remodelingAdd(@Param("project") String project, @Param("py") String py, @Param("period") String period);
	
	//리모델링 목록 삭제
	@Delete("delete from remodeling where num = #{num}")
	public void remodelingDel(@Param("num") int num);
	
	//가장 큰 num값을 구함
	@Select("select max(num) from remodeling")
	public int maxNum();
}
