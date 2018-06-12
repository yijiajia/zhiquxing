package cn.edu.gpnu.handle;

import cn.edu.gpnu.bean.Msg;
import cn.edu.gpnu.enums.ResultEnum;
import cn.edu.gpnu.exception.BaseException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 异常捕获类
 */
@Component
public class CustomHandlerExceptionResolver implements HandlerExceptionResolver {

    //增加异常日志打印
    private final static Logger logger = LoggerFactory.getLogger(CustomHandlerExceptionResolver.class);

    @Override
    public ModelAndView resolveException(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) {

        ModelAndView modelAndView = new ModelAndView();

        if(e instanceof BaseException){
            BaseException baseException = (BaseException)e;
            logger.error("异常信息：",e);
            modelAndView.addObject("errorMsg",Msg.fail(baseException.getCode(),baseException.getMessage()));
            modelAndView.setViewName("404");
            return modelAndView;
        }else{
            logger.error("【系统异常】={}",e);
            modelAndView.addObject("errorMsg",
                    Msg.fail(ResultEnum.UnknownException.getCode()
                            ,ResultEnum.UnknownException.getMessage()));
            modelAndView.setViewName("404");
            return modelAndView;
        }
    }
}
