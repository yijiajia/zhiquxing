<%@ page  pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta charset="utf-8">
<base target="_self">
<title>账号登录 | 智趣行</title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta property="qc:admins" content="21604337436016410016375" />
<link rel="stylesheet" href="css/community/website_ff83cd6911.css">

    <style>
        .login .login-box .login-form .tabcont{
            margin: 30px 25px 0 25px;
        }
        #login_agree.error .is_agree-tip{
            display: block !important;
            color:#F1625D;
        }

        .thirdParty{
            margin: 17px 0;
        }
        .login .login-box .login-form .thirdParty .thirdParty-cont{
            height: auto;
            margin-top: 17px;
        }

    </style>


</head>
<body>
<div class="login">
    <!-- logo 和 slogen -->
    <div class="logoNslogen">
        <i class="logo"></i>
        <p class="slogen"></p>
    </div>
    <!-- logo 和 slogen -->
    <!-- 登陆框 -->
    <div class="login-box">
        <div class="login-form">
            <div class="head">
                <div class="tabs">
                    <div class="tab js-tab"><a href="register.jsp">注册/登录</a></div>
                    <div class="tab selected js-tab">账号密码登录</div>
                </div>
            </div>
            <div class="body">
                <div class="tabconts">
                    
                    <div class="tabcont  selected js-tabcont">
                        <form id="form2" method="post">
                        <div class="input-group">
                            <input type="text" name="username" class="input_full" placeholder="手机号/邮箱" id="login_username"
                            	onchange="check1()">
                            <p class="tip" id="login_username-tip"></p>
                        </div>
                        <div class="input-group">
                            <input type="password" name="password" class="input_md fl" placeholder="密码" id="login_password">
                            <a href="#" class="inputBtn_sm btn_link fr" >忘记密码？</a>
                            <p class="tip fl" id="login_password-tip"></p>
                        </div>
                        <div class="submit-group">
                            <!--js-submit_accout-->
                            <button type="button" class="btn_blue btn-submit">登录</button>
                            <p style="color: red" id="submit-tip"></p>
                        </div>
                        </form>
                    </div>
                </div>

                <div class="thirdParty">
                    <a class="js-showThirdParty" href="javascript:;">第三方登录</a>
                    <div class="thirdParty-cont">
                        <table>
                            <tr>
                                <td>
                                    <a href="#" class="wechat"><i></i>微信</a>
                                </td>
                                <td>
                                    <a href="#" class="weibo"><i></i>微博</a>
                                </td>
                                <td>
                                    <a href="#" class="qq"><i></i>QQ</a>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <div class="downloadApp">
            <div class="qrcode">
                <img src="img/erweima.jpg">
            </div>
           <h1><i class="icon-qrcode"></i>扫码关注智趣行公众号</h1>
        </div>
    </div>
    <!-- 注册框，已转移 -->

</div>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/login/userLogin.js"></script>
</body>
</html>