package com.biz.team.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.InsertProvider;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.apache.ibatis.annotations.UpdateProvider;

import com.biz.team.model.BbsVO;
import com.biz.team.model.TeamVO;
import com.biz.team.sql.BbsSQL;
import com.biz.team.sql.TeamSQL;

public interface BbsDao {

	@Select("SELECT * FROM tbl_board order by b_seq desc")
	public List<BbsVO> selectAll();

	@Select("SELECT * FROM tbl_board WHERE b_seq = #{seq}")
	public BbsVO findBySeq(long seq);

	@Insert("INSERT INTO tbl_board(b_seq,b_date,b_time,b_writer,b_subject,b_content,b_count) VALUES( SEQ_board.NEXTVAL,#{b_date},#{b_time},#{b_writer},#{b_subject},#{b_content},#{b_count})") 
	public int insert(BbsVO bbsVO);

	@Update("UPDATE tbl_board SET b_date =#{b_date},b_time=#{b_time},b_writer=#{b_writer},b_subject=#{b_subject},b_count=#{b_count} WHERE b_seq = #{b_seq}")
	public int update(BbsVO bbsVO);

	@Delete("DELETE FROM tbl_board WHERE b_seq =#{b_seq}")
	public int delete(long seq);

}
