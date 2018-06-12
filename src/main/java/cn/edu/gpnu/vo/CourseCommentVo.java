package cn.edu.gpnu.vo;

import cn.edu.gpnu.bean.custom.CourseCommentCustom;
import cn.edu.gpnu.bean.custom.UserCustom;

/**
 * 课程评论的包装类
 */
public class CourseCommentVo {

    /**
     * 课程评论扩展类
     */
    private CourseCommentCustom courseCommentCustom;

    /**
     * 用户扩展类
     */
    private UserCustom userCustom;

    public CourseCommentCustom getCourseCommentCustom() {
        return courseCommentCustom;
    }

    public void setCourseCommentCustom(CourseCommentCustom courseCommentCustom) {
        this.courseCommentCustom = courseCommentCustom;
    }

    public UserCustom getUserCustom() {
        return userCustom;
    }

    public void setUserCustom(UserCustom userCustom) {
        this.userCustom = userCustom;
    }
}
