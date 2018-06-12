package cn.edu.gpnu.service;

import cn.edu.gpnu.bean.custom.NewsCustom;

import java.util.List;

public interface INewsService {
    /**
     * 拿到所有新闻
     * @return
     */
    public List<NewsCustom> getAllNews();

    /**
     * 根据id获取新闻
     * @param id
     * @return
     */
    public NewsCustom getNewsById(Integer id);

}
