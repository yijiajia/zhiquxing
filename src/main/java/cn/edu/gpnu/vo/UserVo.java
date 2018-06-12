package cn.edu.gpnu.vo;

import cn.edu.gpnu.bean.custom.UserCustom;

/**
 * 用户的包装类
 */
public class UserVo {

    private UserCustom userCustom;

    public UserCustom getUserCustom() {
        return userCustom;
    }

    public void setUserCustom(UserCustom userCustom) {
        this.userCustom = userCustom;
    }
}
