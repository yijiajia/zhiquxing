package cn.edu.gpnu.dao;

import cn.edu.gpnu.bean.custom.NewsCustom;

import java.util.List;

public interface NewsMapper {

   public List<NewsCustom> getNews();

   public NewsCustom getNewsById(Integer id);


}
