package cn.edu.gpnu.service.Impl;

import cn.edu.gpnu.bean.User;
import cn.edu.gpnu.dao.UserMapper;
import cn.edu.gpnu.service.IUserService;
import cn.edu.gpnu.utils.CharacterUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;

@Service
public class UserService implements IUserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public User getUserByUserName(String username) {
        User user = userMapper.getUserByUserName(username);

        return user;
    }

    @Override
    public void addUser(User user) {
        //设置默认值
        if(user.getNickname()==null || "".equals(user.getNickname())){
            user.setNickname(CharacterUtils.getRandomString(8));
        }
        if(user.getPassword()!=null){
            //对密码加密处理
            user.setPassword(DigestUtils.md5DigestAsHex(user.getPassword().getBytes()));
        }

        System.out.println("查看user的nickname----"+user.getNickname());
        userMapper.insert(user);
    }
}
