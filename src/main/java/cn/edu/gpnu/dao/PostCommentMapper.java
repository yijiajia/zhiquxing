package cn.edu.gpnu.dao;

import cn.edu.gpnu.bean.PostComment;
import cn.edu.gpnu.bean.PostCommentExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface PostCommentMapper {
    long countByExample(PostCommentExample example);

    int deleteByExample(PostCommentExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(PostComment record);

    int insertSelective(PostComment record);

    List<PostComment> selectByExample(PostCommentExample example);

    PostComment selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") PostComment record, @Param("example") PostCommentExample example);

    int updateByExample(@Param("record") PostComment record, @Param("example") PostCommentExample example);

    int updateByPrimaryKeySelective(PostComment record);

    int updateByPrimaryKey(PostComment record);
}