package cn.edu.gpnu.aspect;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;

@Component
@Aspect
public class HttpAspect {

    private final static Logger logger = LoggerFactory.getLogger(HttpAspect.class);
    //对所有controller进行日志输出
    @Pointcut("execution(public * cn.edu.gpnu.controller.*.*(..))")
    public void log(){}

    @Before("log()")
    public void doBefore(JoinPoint joinPoint){
        logger.info("Before Method");
        ServletRequestAttributes attributes = (ServletRequestAttributes)RequestContextHolder.getRequestAttributes();
        HttpServletRequest request = attributes.getRequest();
        //url
        logger.info("url={}",request.getRequestURL());
        //ip
        logger.info("ip={}",request.getRemoteAddr());
        //method
        logger.info("method={}",request.getMethod());
        //类方法
        logger.info("class_method={}",joinPoint.getSignature().getDeclaringTypeName()+"."
                +joinPoint.getSignature().getName());
        //参数
        logger.info("arg={}",joinPoint.getArgs());

    }

    @After("log()")
    public void doAfter(){
        logger.info("After Method");

    }

    @AfterReturning(returning ="object",pointcut = "log()")
    public void doAfterReturning(Object object){
        logger.info("AfterReturning Method");
        logger.info("response={}",object.toString());
    }

    @AfterThrowing
    public void doAfterThrowing(Object e){
        logger.error("异常信息：{}",e);
    }


}
