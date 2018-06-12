//返回所有菜单项
function item(id)
{
    return document.getElementById(id).getElementsByTagName("li");
}
//返回所有菜单对应的内容
function content(id)
{
    return document.getElementById(id).getElementsByTagName("div");
}
var item = item("proleft");//获取菜单项集合
var content = content("about_right_content");//获取内容项集合
for (var i = 0; i < item.length; i++) {
	item[i].index=i;//存储索引值
	item[i].onclick=function(){
	for (var j = 0; j < item.length; j++) {
  	item[j].className='';//设置所有菜单项为不选中
  	content[j].className='';//设置所有内容项为不选中
	}
  	this.className='on';//设置点击的菜单项为选中
  	content[this.index].className='show';//显示对应的内容项
  	}
 }
