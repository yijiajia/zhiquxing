package cn.edu.gpnu.dao;

import cn.edu.gpnu.bean.Course;

import java.util.List;

public interface CourseMapper {

    public List<Course> getCourseList();

    public Course getCourseById(Integer id);
}
