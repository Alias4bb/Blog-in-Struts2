<%@ page language="java"  pageEncoding="utf-8"%>
<div class="admin-sidebar am-offcanvas" id="admin-offcanvas">
    <div class="am-offcanvas-bar admin-offcanvas-bar">
      <ul class="am-list admin-sidebar-list">
        <li><a href="index.jsp"><span class="am-icon-home"></span> 首页</a></li>
        <li class="admin-parent">
          <a class="am-cf" data-am-collapse="{target: '#collapse-nav'}"><span class="am-icon-dashboard"></span> 控制台 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
          <ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav">
            <li><a href="information.jsp" class="am-cf"><span class="am-icon-check"></span> 个人资料<span class="am-icon-star am-fr am-margin-right admin-icon-yellow"></span></a></li>
           
            <li><a href="picture.jsp"><span class="am-icon-th"></span> 照片</a></li>
            <li><a href="posts.jsp"><span class="am-icon-paragraph"></span> 文章</a></li>
            <li><a href="categories.jsp"><span class="am-icon-list"></span> 分类</a></li>
            <li><a href="tags.jsp"><span class="am-icon-tags"></span> 标签</a></li>
            <li><a href="users.jsp"><span class="am-icon-users"></span> 用户</a><li>
               <li><a href="files.jsp"><span class="am-icon-file"></span> 文件</a><li>
          </ul>
        </li>
         <li><a href="write_post.jsp"><span class="am-icon-edit"></span> 撰写</a></li>
      
      </ul>
      </ul>

      <div class="am-panel am-panel-default admin-sidebar-panel">
        <div class="am-panel-bd">
          <p><span class="am-icon-bookmark"></span> 公告</p>
          <p>时光静好，与君语；细水流年，与君同。—— Alias's Blog</p>
        </div>
      </div>

         </div>
  </div>