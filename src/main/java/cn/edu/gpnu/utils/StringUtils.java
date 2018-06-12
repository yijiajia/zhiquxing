package cn.edu.gpnu.utils;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * 字符串校验工具类
 */
public class StringUtils {

    /**
     * 检查用户名是否符合格式:手机号及邮箱
     * @param username
     * @return
     */
    public static boolean checkUsername(String username){

        //手机匹配
        String mPhone = "0?(13|14|15|17|18|19)[0-9]{9}";
        //邮箱匹配
        String mMail = "[A-Za-z0-9]*@([A-Za-z0-9][-A-Za-z0-9]+\\.)+[A-Za-z]{2,14}";
//        String mMail = "\w[-\w.+]*@([A-Za-z0-9][-A-Za-z0-9]+\.)+[A-Za-z]{2,14}";


        if(username!=null && !"".equals(username)){
            //判断是否是手机格式
            Pattern p1 = Pattern.compile(mPhone);
            Matcher m1 = p1.matcher(username);
            //判断是否是邮箱格式
            Pattern p2 = Pattern.compile(mMail);
            Matcher m2 = p2.matcher(username);

            if( (!m1.matches() && m2.matches()) || (!m2.matches() && m1.matches()) ){
                return true;
            }
        }

       return false;
    }


}
