<%@ page language="java" import="java.util.*,com.myhomepage.utils.*,java.sql.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/admin/";
%><% String id=(String)session.getAttribute("u_id");
  String sql="select u_name from blog_users where u_id='"+id+"'";
  Db db=new Db();
  ResultSet rs=db.doSelect(sql);
  String name="";
  if(rs.next()){
   name=rs.getString("u_name");
   }
   db.close();%>

<!doctype html>
<html class="no-js">
<head>
<base href="<%=basePath%>">
    
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>后台管理</title>
  <meta name="description" content="">
  <meta name="keywords" content="">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
  <meta name="renderer" content="webkit">
  <meta http-equiv="Cache-Control" content="no-siteapp" />
  
  <meta name="apple-mobile-web-app-title" content="Amaze UI" />
  <link rel="stylesheet" href="assets/css/amazeui.min.css"/>
  <link rel="stylesheet" href="assets/css/admin.css">
  <link rel="stylesheet" href="assets/css/trumbowyg.min.css">
  <link rel="stylesheet" href="assets/css/amazeui.datetimepicker.css">
  <script type="text/javascript">window.onload=function(){if(<%=id%>==null){window.location.href="Login";}}
     </script>
</head>
<body>
  <!-- css hack -->
<!--[if lte IE 9]>
<p class="browsehappy">你正在使用<strong>过时</strong>的浏览器，Amaze UI 暂不支持。 请 <a href="http://browsehappy.com/" target="_blank">升级浏览器</a>
  以获得更好的体验！</p>
<![endif]-->

<header class="am-topbar admin-header">
  <div class="am-topbar-brand">
    <strong><%=name %></strong> <small>'s blog</small>
  </div>

  <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only" data-am-collapse="{target: '#topbar-collapse'}"><span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span></button>

  <div class="am-collapse am-topbar-collapse" id="topbar-collapse">

    <ul class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list">
      
      <li class="am-dropdown" data-am-dropdown>
        <a class="am-dropdown-toggle" data-am-dropdown-toggle href="javascript:;">
          <span class="am-icon-users"></span> <%=name %> <span class="am-icon-caret-down"></span>
        </a>
        <ul class="am-dropdown-content">
          <li><a href="information.jsp"><span class="am-icon-user"></span> 资料</a></li>
         
          <li><a href="LogOut"><span class="am-icon-power-off"></span> 退出</a></li>
        </ul>
      </li>
      
    </ul>
  </div>
</header>

<div class="am-cf admin-main">
  <!-- sidebar start -->
  