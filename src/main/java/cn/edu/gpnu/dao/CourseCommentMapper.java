package cn.edu.gpnu.dao;

import cn.edu.gpnu.bean.CourseComment;
import cn.edu.gpnu.vo.CourseCommentVo;

import java.util.List;

public interface CourseCommentMapper {

    public List<CourseCommentVo> getCourseCommentByCourseId(Integer courseId);

    void updatePraiseNum(CourseCommentVo courseCommentVo);

    void insertCourseComment(CourseComment courseComment);



}
