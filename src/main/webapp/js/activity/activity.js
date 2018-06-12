//页面加载时调用
$(document).ready(function() {

    $.ajax({
        dataType:"json",
        url:basePath+"/activity/allCourse",
        success:function (msg) {
            if(msg.code==100){
                var str="";
                var data = msg.extend.list;

                if(data.length>0){
                    $.each(data,function(n,course){
                        // alert(n+' '+course);
                        str+="<div class='list-item'>"+
                            "<a href='"+basePath+"/activity/course/"+course.id+"'>"+
                            "<div class='item-img'> <img src='"+basePath+"/"+course.picUrl+"'>"+"</div></a>"+
                            "<div class='item-text'> " +
                            "<p class='item-title'>"+course.name+"</p>" +
                            "<p class='item-desc'>"+course.summary+"</p>"+
                            "</div>"+
                            "</div>";

                    });
                }else{
                    str+="<p style='text-align: center;'>暂时还没有课程！</p>";
                }

                //在class为content的元素开头插入内容
                $(".content").prepend(str);
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


//轮播图
layui.use('carousel', function(){
  var carousel = layui.carousel;
  //建造实例
  carousel.render({
    elem: '#carousel'
	,width: '100%' //设置容器宽度
	,height:'300px'//高度
	,arrow: 'always' //始终显示箭头
	,indicator: 'none'//指示器位置
  });
});
//分页
layui.use('laypage', function(){
  var laypage = layui.laypage;
  
  //执行一个laypage实例
  laypage.render({
    elem: 'fenye' //注意，这里的 test1 是 ID，不用加 # 号
    ,count: 50 //数据总数，从服务端得到
  });
});

