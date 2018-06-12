package cn.edu.gpnu.service.Impl;

import cn.edu.gpnu.bean.CourseComment;
import cn.edu.gpnu.dao.CourseCommentMapper;
import cn.edu.gpnu.enums.ResultEnum;
import cn.edu.gpnu.exception.BaseException;
import cn.edu.gpnu.service.ICourseCommentService;
import cn.edu.gpnu.vo.CourseCommentVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class CourseCommentService implements ICourseCommentService {

    @Autowired
    private CourseCommentMapper courseCommentMapper;

    @Override
    public List<CourseCommentVo> getCourseCommentByCourseId(Integer courseId) {

        if(courseId!=null){
            List<CourseCommentVo> list = courseCommentMapper.getCourseCommentByCourseId(courseId);
            return list;
        }else{
            //参数为空
            throw new BaseException(ResultEnum.ParamException.getCode(),
                    ResultEnum.ParamException.getMessage());
        }

    }

    @Override
    public void updatePraiseNum(CourseCommentVo courseCommentVo) {

        if(courseCommentVo.getCourseCommentCustom()!=null){
            courseCommentMapper.updatePraiseNum(courseCommentVo);
        }else{
            throw new BaseException(ResultEnum.ParamException.getCode(),
                    ResultEnum.ParamException.getMessage());
        }
    }

    @Override
    public void addComment(CourseComment courseComment) {
        try {
            if(courseComment!=null){
                courseCommentMapper.insertCourseComment(courseComment);
            }else{
                throw new BaseException(ResultEnum.ParamException.getCode(),
                        ResultEnum.ParamException.getMessage());
            }
        }catch (Exception e){
            throw new BaseException(ResultEnum.UnknownException.getCode(),
                        ResultEnum.UnknownException.getMessage());
        }


    }


}
