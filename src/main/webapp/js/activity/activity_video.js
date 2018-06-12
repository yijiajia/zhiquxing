//页面加载时调用
$(document).ready(function () {

    $.ajax({
        url:basePath+"/activity/course/comment",
        data:{"courseId":courseId},
        type:"post",
        dataType:"json",

        success:function (msg) {

            if(msg.code==100){
                var str ="<div class='comment-list'>";
                var data = msg.extend.list;
                var num  = msg.extend.num;
                $(".comment-num").text(num);

                if(data.length<=0){

                    str+="<p style='text-align: center;'>暂时还没有评论，赶紧来做第一个吧！</p>";

                }else{
                    str+="<ul>";
                    //遍历评论的list
                    $.each(data,function (n,courseList) {

                        str+="<li>" +
                                     "<div class='img'>" +
                                    "<a href='#'><img src='"+basePath+"/iconfont/user-icon.jpg'/></a>"+
                                    "</div>" +
                                "<div class='text'><h2>"+courseList.userCustom.nickname+"</h2><p>"+courseList.courseCommentCustom.comment+"</p>" +
                                    "<div class='meta'><dl class='info'>" +
                                    "<dd>&nbsp;</dd><dd><span class='line'></span></dd>" +
                                     "<dd><a href='#' class='ico-jubao'>&nbsp;举报</a></dd></dl>"+
                                    "<dl class='acts'><dd><a class='ico-zan' update-id='"+courseList.courseCommentCustom.id+"'>" +
                              "&nbsp;<span id='praiseNum' >"+courseList.courseCommentCustom.praiseNum+"</span>赞</a></dd>" +
                            "<dd><span class='line'></span></dd><dd><a href='#' class='ico-com'>&nbsp;</a> </dd></dl>"+
                            "</div>" +
                            "</div></li>";


                    });
                    str+="</ul>";
                }
                str+="</div>";
                //在comment-page之后加入内容
                $(".comment-page").after(str);

            }
        },
        error:function(XMLHttpRequest, textStatus, errorThrown) {
            // alert("等等！");
            alert("readystate->" + XMLHttpRequest.readyState);
            alert("status->" + XMLHttpRequest.status);
            alert("网络故障！");
        }
    })

});





//插入评论
$("#btn-submit").click(function () {
    var comment = $("#comment").val();
    // alert(comment);
    //获取用户Id和课程idv
    if(userId==null || ""==userId){
        $("#comment-tip").text("请先登录！");
        return false;
    }

    if(comment.length<=0){
        $("#comment-tip").text("请输入评论！");
        return false;
    }else {
        // alert("准备发送数据。。。");
        $.ajax({
            url: basePath+"/activity/course/addComment",
            data: {"comment":comment,"userId":userId,"courseId":courseId},
            dataType: "json",
            type: "post",
            success:function (data) {
                if(data.code=100){
                    //评论成功
                    alert("评论成功");
                }else{
                    alert("重新输入");
                }
                location.reload();

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


//点赞更新
$(document).on('click','.ico-zan',function () {
    if(userId==null || ""==userId){
        // $("#comment-tip").text("请先登录！");
        alert("请先登录！");
        return false;

    }
    var id = $(this).attr("update-id");
    var that = $(this);
    var praiseNum = $(this).find("span").text();
    if(praiseNum==null || isNaN(praiseNum)){
        praiseNum = 0;
    }
    praiseNum = parseInt(praiseNum);
    praiseNum = praiseNum + 1;

    //更新

    $.ajax({
        url:basePath+"/activity/course/comment/updatePraise",
        type:"post",
        data:{"praiseNum":praiseNum,"id":id},
        dataType:"json",

        success:function (data) {
            //成功
            if(data.code==100){
                that.off("click");
                that.find("span").text(praiseNum);
            }else{
                alert("啊？？？");
            }

        },

        error:function(XMLHttpRequest, textStatus, errorThrown) {
            // alert("等等！");
            alert("readystate->" + XMLHttpRequest.readyState);
            alert("status->" + XMLHttpRequest.status);
            alert("网络故障！");
        }

    });

});

