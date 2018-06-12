<%@ page  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
   
<meta charset="utf-8">
<base target="_self">
<title>注册账号 | 智趣行</title>
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
    <script type="text/javascript">
    	var basePath = "${pageContext.request.contextPath}";
    </script>

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
                    <div class="tab selected js-tab"> 注册/登录</div>
                    <div class="tab  js-tab"><a href="login.jsp">账号密码登录</a></div>
                </div>
            </div>
            <div class="body">
                <div class="tabconts">
                    <div class="tabcont js-tabcont selected ">
                        <form id="form1" method="post" >
                           	 <div class="input-group">
                                <input type="text" name="username" class="input_full" placeholder="手机号/邮箱"
                                       id="username" onchange="checkUserName()">
                                <p class="tip" id="register_username-tip"></p>
                          	  </div>
                            	<div class="input-group">
                           	    <input type="text" name="password" class="input_full" placeholder="密码"
                                       id="password">
                                <p class="tip" id="register_password-tip"></p>
                            </div>
                            <!--
                            <div class="input-group" id="validi">
                                <input type="text" name="validcode" class="input_sm fl" placeholder="6位验证码" id="login_validcode">
                                <a id="send_validcode"
                                   href="#" class="js-sendPhoneCode inputBtn_sm fr" >获取验证码</a>
                                <p class="tip fl" id="login_validcode-tip"></p>
                            </div>
                            -->
                            <div id="popup-captcha"></div>
                            <div class="submit-group">
                                <button class="register-sumbit btn_blue" type="button">快捷登录</button>
                                <p class="tip" id="register_sumbit-tip"></p>
                            </div>
                            <div class="label" id="login_agree" 
                            		style="
									    margin: 14px 30px 24px;
									    border-bottom: 1px dashed #eee;
									    padding-bottom: 24px;
									    text-align: center;
									    font-size: 12px;
									    color: #2B343A;
									">
                                <input type="checkbox" name="agree" value="1" checked="checked" id="agree">
                                <span><a href="#" target="_blank" style="color: #2B343A;">同意《智趣行用户注册协议》</a></span>
                                <span class="is_agree-tip tip" style="display: none;"></span>
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

</div>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/login/userRegister.js"></script>
</body>
</html>