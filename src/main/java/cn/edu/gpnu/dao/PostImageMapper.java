package cn.edu.gpnu.dao;

import cn.edu.gpnu.bean.PostImage;
import cn.edu.gpnu.bean.PostImageExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface PostImageMapper {
    long countByExample(PostImageExample example);

    int deleteByExample(PostImageExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(PostImage record);

    int insertSelective(PostImage record);

    List<PostImage> selectByExample(PostImageExample example);

    PostImage selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") PostImage record, @Param("example") PostImageExample example);

    int updateByExample(@Param("record") PostImage record, @Param("example") PostImageExample example);

    int updateByPrimaryKeySelective(PostImage record);

    int updateByPrimaryKey(PostImage record);
}