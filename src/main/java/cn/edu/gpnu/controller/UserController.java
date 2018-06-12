package cn.edu.gpnu.controller;

import cn.edu.gpnu.bean.Msg;
import cn.edu.gpnu.bean.User;
import cn.edu.gpnu.enums.ResultEnum;
import cn.edu.gpnu.service.IUserService;
import cn.edu.gpnu.utils.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private IUserService userService;

    @RequestMapping(value="/login",method=RequestMethod.POST)
    @ResponseBody
    public Msg login(@RequestParam("username")String username,
                        @RequestParam("password") String password, HttpServletRequest request){
        User user = userService.getUserByUserName(username);
        if(user!=null){
            if(DigestUtils.md5DigestAsHex(password.getBytes()).equals(user.getPassword())){
                request.getSession().setAttribute("user",user);
                return Msg.success();
            }else{
                return Msg.fail(ResultEnum.InfoException.getCode(),
                        "密码错误！");
            }
        }

        return Msg.fail(ResultEnum.InfoException.getCode(),
                "账号不存在！");
    }

    @RequestMapping(value = "/loginOut",method = RequestMethod.GET)
    public String loginOut(HttpSession session){
        session.invalidate();
        return "index";
    }

    @RequestMapping(value = "/register",method = RequestMethod.POST)
    @ResponseBody
    public Msg register(String username,String password,HttpServletRequest request){

        if(StringUtils.checkUsername(username) && password!=null){
            User user = userService.getUserByUserName(username);
            if(user!=null){

                return Msg.fail(ResultEnum.InfoException.getCode(),
                        ResultEnum.InfoException.getMessage());
            }else{
                //注册
                user = new User();
                user.setUsername(username);
                user.setPassword(password);
                userService.addUser(user);
                //若没报错..又查询一次，感觉会很慢。
                request.getSession().setAttribute("user",userService.getUserByUserName(username));

                return Msg.success();
            }
        }
        //校验失败。。
        return Msg.fail(ResultEnum.ParamException.getCode(),
                    ResultEnum.ParamException.getMessage());

    }

    @RequestMapping(value = "/checkUser",method = RequestMethod.POST)
    @ResponseBody
    public Msg checkUser(String username){
        if(StringUtils.checkUsername(username)){
            User user = userService.getUserByUserName(username);
            if(user!=null){
                return Msg.fail(ResultEnum.InfoException.getCode(),
                        ResultEnum.InfoException.getMessage());
            }else{
                return Msg.success();
            }
        }
        return Msg.fail(ResultEnum.ParamException.getCode(),
                ResultEnum.ParamException.getMessage());
    }


}
