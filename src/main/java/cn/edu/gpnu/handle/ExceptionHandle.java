package cn.edu.gpnu.handle;

import cn.edu.gpnu.bean.Msg;
import cn.edu.gpnu.enums.ResultEnum;
import cn.edu.gpnu.exception.BaseException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@ControllerAdvice
public class ExceptionHandle {

    //增加异常日志打印
    private final static Logger logger = LoggerFactory.getLogger(ExceptionHandle.class);

 /*   //捕获BaseException异常，返回异常信息json数据
    @ExceptionHandler(BaseException.class)
    @ResponseBody
    public Msg handle(Exception e){
        if(e instanceof BaseException){
            BaseException baseException = (BaseException)e;
            logger.error("异常信息：",e);
            return Msg.fail(baseException.getCode(),baseException.getMessage());
        }else{
            logger.error("【系统异常】={}",e);
            return Msg.fail(ResultEnum.UnknownException.getCode()
                    ,ResultEnum.UnknownException.getMessage());
        }
    }
*/
    //捕获BaseException异常，返回404页面
//    @ExceptionHandler(BaseException.class)
//    public ModelAndView handle(Exception e,ModelAndView modelAndView){
//        if(e instanceof BaseException){
//            BaseException baseException = (BaseException)e;
//            logger.error("异常信息：",e);
//            modelAndView.addObject("errorMsg",Msg.fail(baseException.getCode(),baseException.getMessage()));
//            modelAndView.setViewName("404");
//            return modelAndView;
//        }else{
//            logger.error("【系统异常】={}",e);
//            modelAndView.addObject("errorMsg",
//                    Msg.fail(ResultEnum.UnknownException.getCode()
//                            ,ResultEnum.UnknownException.getMessage()));
//            modelAndView.setViewName("404");
//            return modelAndView;
//        }
//    }


}
