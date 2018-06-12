
//监听导航栏与链接的关系
 $(document).ready(function () {

     var location = window.location.href+"";
     var local = location.substr(31,location.length);
     $(".navbar-item").each(function () {
         var current = $(this).parent("a").attr("href")+"";
         var cur = current.substr(11,current.length);
         if(local.indexOf(cur)>0){
             $(this).addClass("on");
         }else{
             $(this).removeClass("on");
         }

     });


 });



//触发下拉菜单

$(".list_dt").on("click",function () {
    $(".list_dd").stop();
    $(".list_dd").css("display","block");
    $(this).siblings("li").removeAttr("id");
    if($(this).attr("id")=="open"){
        $(this).removeAttr("id").siblings("dd").slideUp();
    }else{
        $(this).attr("id","open").next().slideDown().siblings("dd").slideUp();
    }
})
