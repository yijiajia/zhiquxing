package cn.edu.gpnu.controller;

import cn.edu.gpnu.bean.Course;
import cn.edu.gpnu.bean.CourseComment;
import cn.edu.gpnu.bean.Msg;
import cn.edu.gpnu.bean.User;
import cn.edu.gpnu.bean.custom.CourseCommentCustom;
import cn.edu.gpnu.enums.ResultEnum;
import cn.edu.gpnu.service.ICourseCommentService;
import cn.edu.gpnu.service.ICourseService;
import cn.edu.gpnu.service.IUserService;
import cn.edu.gpnu.vo.CourseCommentVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("activity")
public class CourseController {

    @Autowired
    private ICourseService courseService;
    @Autowired
    private ICourseCommentService courseCommentService;
    @Autowired
    private IUserService userService;

    //跳转至活动页面
    @RequestMapping(value = "/course")
    public String getActivityPage(){
        return "activity";
    }


    //拿到所有课程信息的api接口
    @RequestMapping(value = "/allCourse",method = RequestMethod.GET)
    @ResponseBody
    public Msg getAllCourse(){
        List<Course> list = courseService.getCourseList();
        if(list!=null){
            Msg msg = Msg.success();
            Map<String,Object> map = new HashMap<>();
            map.put("list",list);
            msg.setExtend(map);
            return msg;
        }else{
            Msg msg = Msg.fail();
            msg.add("list",list);
            return msg;
        }

    }
/*//     api接口
    @RequestMapping(value = "/course/{id}",method = RequestMethod.GET)
    @ResponseBody
    public Msg getCourseById(@PathVariable("id")Integer id){
        Course course = (Course) courseService.getCourseById(id);
        if(course!=null){
            Msg msg = Msg.success();
            Map<String,Object> map = new HashMap<>();
            map.put("course",course);
            msg.setExtend(map);
            return msg;
        }

        return Msg.fail();
    }*/

    //根据id进入课程相应的详情页，包括视频及评论
    @RequestMapping(value = "/course/{id}",method = RequestMethod.GET)
    public ModelAndView getCourseById(ModelAndView modelAndView,
                                      @PathVariable("id")Integer id){
        Course course = (Course) courseService.getCourseById(id);
        if(course!=null){
            //拿到视频
            Msg msg = Msg.success();
            Map<String,Object> map = new HashMap<>();
            map.put("course",course);
            msg.setExtend(map);
            modelAndView.addObject("course",course);
            modelAndView.setViewName("activity_video");
            //拿到相应的评论数
            modelAndView.addObject("num",0);

            return modelAndView;
        }
        //发生错误时跳转至404
        modelAndView.addObject("errorMsg",Msg.fail());
        modelAndView.setViewName("404");
        return modelAndView;
    }

    //获取课程评论
    @RequestMapping(value = "/course/comment",method = RequestMethod.POST)
    @ResponseBody
    public Msg getCourseComment(Integer courseId){

        if(courseId!=null){
            List<CourseCommentVo> list = courseCommentService.getCourseCommentByCourseId(courseId);
            if(null!=list){
                Msg msg = Msg.success();
                Map<String,Object> map = new HashMap<>();
                map.put("num",list.size());
                map.put("list",list);
                msg.setExtend(map);
                return msg;
            }else{
                Msg msg = Msg.success();
                Map<String,Object> map = new HashMap<>();
                map.put("list",null);
                map.put("num",0);
                return msg;
            }
        }

        return Msg.fail(ResultEnum.ParamException.getCode(),
                ResultEnum.ParamException.getMessage());
    }


    //提供插入评论的api接口，返回新增评论
    @RequestMapping(value = "/course/addComment",method = RequestMethod.POST)
    @ResponseBody
    public Msg addComment(String comment,Integer userId,Integer courseId){
        if(comment!=null && comment.length()>0){
            //插入评论
            Date date = new Date();
            CourseComment courseComment = new CourseComment();
            courseComment.setComment(comment);
            courseComment.setCreateTime(date);
            courseComment.setPraiseNum("0");
            courseComment.setCourseId(courseId);
            courseComment.setUserId(userId);
            courseCommentService.addComment(courseComment);
            //插入成功后
            Msg msg = Msg.success();
            Map<String,Object> map = new HashMap<>();
            map.put("courseComment",courseComment);
            msg.setExtend(map);
            return msg;
        }else{
            return Msg.fail(ResultEnum.InfoException.getCode(),
                    ResultEnum.InfoException.getMessage());
        }
    }

    //更新评论-->点赞
    @RequestMapping(value = "/course/comment/updatePraise",method = RequestMethod.POST)
    @ResponseBody
    public Msg updatePraiseNum(Integer id,String praiseNum){

        if(praiseNum!=null && id!=null){
            CourseCommentCustom courseCommentCustom = new CourseCommentCustom();
            courseCommentCustom.setId(id);
            courseCommentCustom.setPraiseNum(praiseNum);
            //包装
            CourseCommentVo courseCommentVo = new CourseCommentVo();
            courseCommentVo.setCourseCommentCustom(courseCommentCustom);

            courseCommentService.updatePraiseNum(courseCommentVo);
            return Msg.success();

        }else{
            return Msg.fail();
        }

    }




}
