# Blog-in-Struts2
##介绍
博客前端采用了[issnan](https://github.com/iissnan/hexo-theme-next)的hexo-theme-next主题，后端采用了J2EE的`Struts2`框架，后台模板采取了[AmazeUI](http://amazeui.org)


##主页
首页
![](http://7xlphz.com1.z0.glb.clouddn.com/1.png)

归档
![](http://7xlphz.com1.z0.glb.clouddn.com/2.jpg)

标签
![](http://7xlphz.com1.z0.glb.clouddn.com/3.jpg)

##评论模块
采取了流行的[多说](http://duoshuo.com)模块
##后台
登录
![](http://7xlphz.com1.z0.glb.clouddn.com/4.jpg)
控制台
![](http://7xlphz.com1.z0.glb.clouddn.com/5.png)
编辑器
![](http://7xlphz.com1.z0.glb.clouddn.com/6.png)
###编辑器
编辑器采用了富文本编辑器[Trumbowyg](http://alex-d.github.io/Trumbowyg/),其实也可以采用`Markdown`编辑器的= =
```
$('#trumbowyg-demo').trumbowyg();
```
##感谢
感谢`google`和`stackoverflow`提供的技术性支持，还有`AmazeUI`及`BootStrap`和`SweetAlert`等开源工具提供的帮助
在处理前端模板上，查看了很多Hexo和Jkeyll的博客主题，觉得简约的很适合我的博客,后端模板上面,在看了`PHP`的`Typecho`
和`WordPress`上做了个整合，结合`AmazeUI`做出了这个后台模板.
##Bugs
这个博客后端`bug`蛮多的，主要是在标签处理上面，还有几个用户体验没解决（主要是交互过程中没反馈让人体验 不好~）
