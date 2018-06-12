package cn.edu.gpnu.service.Impl;

import cn.edu.gpnu.bean.custom.NewsCustom;
import cn.edu.gpnu.dao.NewsMapper;
import cn.edu.gpnu.service.INewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class NewsService implements INewsService {

    @Autowired
    private NewsMapper newsMapper;

    @Override
    public List<NewsCustom> getAllNews() {
        return newsMapper.getNews();
    }

    @Override
    public NewsCustom getNewsById(Integer id) {
        if(id!=null){
           return newsMapper.getNewsById(id);
        }
        return null;
    }
}
