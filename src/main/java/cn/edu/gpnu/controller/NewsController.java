package cn.edu.gpnu.controller;

import cn.edu.gpnu.bean.Msg;
import cn.edu.gpnu.bean.News;
import cn.edu.gpnu.bean.custom.NewsCustom;
import cn.edu.gpnu.enums.ResultEnum;
import cn.edu.gpnu.service.INewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/news")
public class NewsController {

    @Autowired
    private INewsService newsService;

    @RequestMapping(value = "/getAll")
    @ResponseBody
    public Msg getAllNews(){
        List<NewsCustom> list = newsService.getAllNews();
        if(list!=null){
            Msg msg = Msg.success();
            msg.add("list",list);
            return msg;
        }else{
            return Msg.fail(ResultEnum.InfoException.getCode(),
                    ResultEnum.InfoException.getMessage());
        }
    }

    //根据id进入新闻详情页
    @RequestMapping(value = "/{id}",method = RequestMethod.GET)
    public ModelAndView getNewsById(ModelAndView modelAndView,
                           @PathVariable("id") Integer id){

        News news = newsService.getNewsById(id);
        if(news!=null){
            modelAndView.setViewName("news_details");
            modelAndView.addObject("news",news);
            return modelAndView;
        }
        //发生错误时跳转至404
        modelAndView.addObject("errorMsg",Msg.fail());
        modelAndView.setViewName("404");
        return modelAndView;
    }

}
