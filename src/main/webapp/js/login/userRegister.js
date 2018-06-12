//注册校验username
function checkUserName() {

    var username = $("#username").val();
    //手机
    var regP ="0?(13|14|15|17|18|19)[0-9]{9}";
    //邮箱
    var regM = "[A-Za-z0-9]*@([A-Za-z0-9][-A-Za-z0-9]+\\.)+[A-Za-z]{2,14}";
    var rp = username.match(regP);
    var rm = username.match(regM);
    if( rp || rm){
        $("#register_username-tip").text("");
    }else{
        $("#register_username-tip").text("格式错误，请检查输入！");
        return false;
    }

    //判断是否存在该用户
    $.ajax({
        url:basePath+"/user/checkUser",
        data:{"username":username},
        type:"post",
        dataType:"json",

        success:function (msg) {
            if(msg.code==200){
                alert("没事了..");
            }else if(msg.code==40){
                $("#register_username-tip").text("该用户已存在！");
            }
        },
        error:function(XMLHttpRequest, textStatus, errorThrown) {
            // alert("等等！");
            alert("readystate->" + XMLHttpRequest.readyState);
            alert("status->" + XMLHttpRequest.status);
            alert("网络故障！");
        }
    });

    //如果是邮箱，则需要验证；

}

//注册
$(".register-sumbit").click(function () {

    var username_tip = $("#register_username-tip").val();
    var password_tip = $("#register_password-tip").val();

    if(username_tip.length!=0 || password_tip.length!=0){
        $(".register_sumbit-tip").text("请确保输入无误！");
        return false;
    }else{

        var username = $("#username").val();
        var password = $("#password").val();
        //发起注册请求
        $.ajax({
            url:basePath+"/user/register",
            data:{"username":username,"password":password},
            type:"post",
            dataType:"json",

            success:function (msg) {
                if(msg.code==100){
                    window.location.href="/ZhiQuXing";
                }else{
                    alert("注册失败！请检查");
                }
            },
            error:function(XMLHttpRequest, textStatus, errorThrown) {
                // alert("等等！");
                alert("readystate->" + XMLHttpRequest.readyState);
                alert("status->" + XMLHttpRequest.status);
                alert("网络故障！");
            }
        });


    }



});

