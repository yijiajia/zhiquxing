package cn.edu.gpnu.service.Impl;

import cn.edu.gpnu.bean.Course;
import cn.edu.gpnu.dao.CourseMapper;
import cn.edu.gpnu.enums.ResultEnum;
import cn.edu.gpnu.exception.BaseException;
import cn.edu.gpnu.service.ICourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CourseService implements ICourseService<Course> {

    @Autowired
    private CourseMapper courseMapper;

    @Override
    public List<Course> getCourseList() {
        return courseMapper.getCourseList();
    }

    @Override
    public Course getCourseById(Integer id) {

        if(id!=null){
            Course course = courseMapper.getCourseById(id);
            if(course!=null){
                return course;
            }else{
                //查询失败
                throw new BaseException(ResultEnum.ParamException.getCode(),
                        ResultEnum.ParamException.getMessage());
            }
        }else{
            //参数为空
            throw new BaseException(ResultEnum.ParamException.getCode(),
                    ResultEnum.ParamException.getMessage());
        }
    }
}
