package cn.edu.gpnu.service;

import cn.edu.gpnu.bean.User;

public interface IUserService {

    public User getUserByUserName(String username);

    public void addUser(User user);



}
