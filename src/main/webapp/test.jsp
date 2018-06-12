<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/main/index.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/showdown/dist/showdown.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/benweet-stackedit/docs/lib/stackedit.min.js"></script>
</head>
<style type="text/css">
    blockquote {
        border-left:#eee solid 5px;
        padding-left:20px;
    }
     ul li {
         line-height: 20px;
     }

     code {
         color:#D34B62;
         background: #F6F6F6;
     }
</style>

<body>

<div>

    <textarea id="oriContent" style="height:400px;width:600px;" onkeyup="convert2()"></textarea>

    <div id="result"></div>

</div>



<script type="text/javascript">
    function convert(){
        var text = document.getElementById("oriContent").value;
        var converter = new showdown.Converter();
        var html = converter.makeHtml(text);
        document.getElementById("result").innerHTML = html;
    }
</script>

<script type="text/javascript">
    function convert2(){
        var location = window.location.href;
        var text = document.getElementById("oriContent").value;
        var stackedit  = new Stackedit({
            url:location
        });
        stackedit.openFile({
                name:'Filename',
            content:{
                    text:text
            }
        });

        stackedit.on('fileChange',function (file) {
            document.getElementById("result").text=file.content.text;
        });

    }
</script>

</body>
</html>