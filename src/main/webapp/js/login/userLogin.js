//校验username
function check1(){
    var username = document.getElementById("login_username").value;
    console.log("var"+username);
    console.log("length"+username.length);
    //手机
    var regP ="0?(13|14|15|17|18|19)[0-9]{9}";
    //邮箱
    var regM = "[A-Za-z0-9]*@([A-Za-z0-9][-A-Za-z0-9]+\\.)+[A-Za-z]{2,14}";
    var rp = username.match(regP);
    var rm = username.match(regM);
    if( rp || rm){
        $("#login_username-tip").text="";
    }else{
        document.getElementById("login_username-tip").innerHTML="格式错误，请检查输入！"
    }
};
//登录提交
$(".btn-submit").click(function () {
    var tip = $(".tip").val();
    console.log("tip"+tip);
    if(tip.length!=0){
        $("#submit-tip").val("请检查输入格式！");
        return false;
    }else{
        //满足格式条件，取值发送数据给后台
        var username = $("#login_username").val();
        var password = $("#login_password").val();
        console.log("username:"+username);
        console.log("password:"+password);

        // ajax发送数据
        $.ajax({
            beforeSend: function(xhr) {
                xhr.setRequestHeader("Access-Toke");
            },
            headers:{'Access-Token':'Access-Control-Allow-Origin:*'},
            url:"user/login",
            data:{"username":username,"password":password},
            dataType:'json',
            type:"post",
            success:function (data) {
                if(data.code==100){
                    //登录成功,进入主页
                    alert("登录成功");
                    window.location.href="/ZhiQuXing";
                }else{
                    $("#submit-tip").text(data.msg);
                    // alert("重新输入！！")
                }

            },

            error:function(XMLHttpRequest, textStatus, errorThrown) {
                // alert("等等！");
                alert("readystate->" + XMLHttpRequest.readyState);
                alert("status->" + XMLHttpRequest.status);
                alert("网络故障！");
            }
        })

    }

});



