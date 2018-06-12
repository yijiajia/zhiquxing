package cn.edu.gpnu.service;

import cn.edu.gpnu.bean.CourseComment;
import cn.edu.gpnu.vo.CourseCommentVo;

import java.util.List;

public interface ICourseCommentService {

    /**
     * 根据课程id拿到所有评论
     * @param courseId
     * @return
     */
    public List<CourseCommentVo> getCourseCommentByCourseId(Integer courseId);

    /**
     * 更新评论:
     *  1、 点赞数
     */
    void updatePraiseNum(CourseCommentVo courseCommentVo);

    /**
     * 新增评论
     * @param courseComment
     */
    void addComment(CourseComment courseComment);


}
