package cn.edu.gpnu.service;

import cn.edu.gpnu.bean.Course;

import java.util.List;

public interface ICourseService<Course> {

    /**
     * 获取 所有课程信息
     */
    public List<Course> getCourseList();


    /**
     * 根据id拿到课程数据
     * @param id
     * @return
     */
    public Course getCourseById(Integer id);


}
