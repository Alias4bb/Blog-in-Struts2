<%@ page language="java" import="java.util.*,com.myhomepage.utils.*,java.sql.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!doctype html>
<html class="theme-next use-motion theme-next-mist">
<head>
    

<meta charset="UTF-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>


<meta http-equiv="Cache-Control" content="no-transform" />
<meta http-equiv="Cache-Control" content="no-siteapp" />






  <link rel="stylesheet" type="text/css" href="vendors/fancybox/source/jquery.fancybox.css?v=2.1.5"/>



  <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,400italic&subset=latin,latin-ext' rel='stylesheet' type='text/css'>


<link rel="stylesheet" type="text/css" href="css/main.css?v=0.4.4"/>


    <meta name="description" content="My Static Blog in Hexo" />



  <meta name="keywords" content="Hexo,next" />



  <link rel="alternate" href="/atom.xml" title="Alias's Blog" type="application/atom+xml" />



  <link rel="shorticon icon" type="image/x-icon" href="favicon.ico?v=0.4.4" />




<script type="text/javascript" id="hexo.configuration">
  var CONFIG = {
    scheme: 'Mist',
    sidebar: 'post'
  };
</script>

    <title> 标签 | Alias's Blog </title>
</head>
<body itemscope itemtype="http://schema.org/WebPage" lang="zh-CN">
<!--[if lte IE 8]>
  <div style=' clear: both; height: 59px; padding:0 0 0 15px; position: relative;margin:0 auto;'>
    <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
      <img src="http://7u2nvr.com1.z0.glb.clouddn.com/picouterie.jpg" border="0" height="42" width="820"
           alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today or use other browser ,like chrome firefox safari."
           style='margin-left:auto;margin-right:auto;display: block;'/>
    </a>
  </div>
<![endif]-->




<div class="container one-column ">
    <div class="headband"></div>
    <header id="header" class="header" itemscope itemtype="http://schema.org/WPHeader">
        <div class="header-inner"><h1 class="site-meta">
  <span class="logo-line-before"><i></i></span>
  <a href="default.jsp" class="brand" rel="start">
      <span class="logo">
        <i class="icon-logo"></i>
      </span>
      <span class="site-title">Alias's Blog</span>
  </a>
  <span class="logo-line-after"><i></i></span>
</h1>

<div class="site-nav-toggle">
  <button>
    <span class="btn-bar"></span>
    <span class="btn-bar"></span>
    <span class="btn-bar"></span>
  </button>
</div>

<nav class="site-nav">
  

  
    <ul id="menu" class="menu ">
      
        
        <li class="menu-item menu-item-home">
          <a href="default.jsp" rel="section">
            <i class="menu-item-icon icon-home"></i> <br />
            首页
          </a>
        </li>
      
        
     
        
      
      
        
        <li class="menu-item menu-item-archives">
          <a href="Archives" rel="section">
            <i class="menu-item-icon icon-archives"></i> <br />
            归档
          </a>
        </li>
      
        
        <li class="menu-item menu-item-tags">
          <a href="Tag" rel="section">
            <i class="menu-item-icon icon-tags"></i> <br />
            标签
          </a>
        </li>
      
    </ul>
  

  
</nav>


        </div>
    </header>

    <main id="main" class="main">
        <div class="main-inner">
            <div id="content" class="content">
               

 
  <div id="posts" class="posts-expand">
<%
Db db=new Db();
  int cc_count=0;
      ResultSet rs,ss;
        String sql="select count(*) from blog_tags";
        String sql3="select * from blog_tags";
        rs=db.doSelect(sql);
        if(rs.next()){
       cc_count=rs.getInt(1);
    };
    ss=db.doSelect(sql3);
      %>
 
  <div class="tag-cloud">
        <div class="tag-cloud-title">
            目前共计 <%=cc_count %> 个标签
        </div>
        <div class="tag-cloud-tags">
        <%while(ss.next()){ %>
        <a href="Tags?name=<%=ss.getString("t_name")%>"><%=ss.getString("t_name")%></a>
            <%} %>
   
        </div>

  </div>


            </div>

            

            
              <div class="comments" id="comments">
                <div class="ds-thread" data-thread-key="tagcloud.jsp" data-title="All tags" data-url="http://127.0.0.1:8080/MyHomePage/tagcloud.jsp"></div>
<!-- 多说评论框 end -->
<!-- 多说公共JS代码 start (一个网页只需插入一次) -->
<script type="text/javascript">
var duoshuoQuery = {short_name:"xsstest"};
	(function() {
		var ds = document.createElement('script');
		ds.type = 'text/javascript';ds.async = true;
		ds.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') + '//static.duoshuo.com/embed.js';
		ds.charset = 'UTF-8';
		(document.getElementsByTagName('head')[0] 
		 || document.getElementsByTagName('body')[0]).appendChild(ds);
	})();
	</script>
              </div>
            
        </div>
    
       
  
  <div class="sidebar-toggle">
    <div class="sidebar-toggle-line-wrap">
      <span class="sidebar-toggle-line sidebar-toggle-line-first"></span>
      <span class="sidebar-toggle-line sidebar-toggle-line-middle"></span>
      <span class="sidebar-toggle-line sidebar-toggle-line-last"></span>
    </div>
  </div>

  <aside id="sidebar" class="sidebar">
    <div class="sidebar-inner">

      <% Db db1=new Db();
 ResultSet rs1,rs2,rs3;
 int c_count=0,p_count=0,t_count=0;
 String sql1="select count(*) from blog_categories";
 String sql2="select count(*) from blog_contents";

 String sql4="select count(*) from blog_tags";
    rs=db1.doSelect(sql1);
    rs1=db1.doSelect(sql2);
   
    rs3=db1.doSelect(sql4);
    if(rs.next()){
     c_count=rs.getInt(1);
    };
     if(rs1.next()){
     p_count=rs1.getInt(1);
    };
     if(rs3.next()){
     t_count=rs3.getInt(1);
    };
  %>

      <section class="site-overview">
        <div class="site-author motion-element" itemprop="author" itemscope itemtype="http://schema.org/Person">
          <img class="site-author-image" src="http://tp2.sinaimg.cn/2946686205/180/5728268566/1" alt="Alias" itemprop="image"/>
          <p class="site-author-name" itemprop="name">Alias</p>
        </div>
        <p class="site-description motion-element" itemprop="description">My First Blog in Struts2</p>
        <nav class="site-state motion-element">
          <div class="site-state-item site-state-posts">
            <a href="Archives">
              <span class="site-state-item-count"><%=p_count %></span>
              <span class="site-state-item-name">归档</span>
            </a>
          </div>

          <div class="site-state-item site-state-categories">
           
              <span class="site-state-item-count"><%=c_count %></span>
              <span class="site-state-item-name">分类</span>
             
          </div>

          <div class="site-state-item site-state-tags">
            <a href="Tag">
              <span class="site-state-item-count"><%=t_count %></span>
              <span class="site-state-item-name">标签</span>
              </a>
          </div><%db1.close(); %>

        </nav>

        
          <div class="feed-link motion-element">
            <a href="/atom.xml" rel="alternate">
              <i class="menu-item-icon icon-feed"></i>
              RSS
            </a>
          </div>
        

       <div class="links-of-author motion-element">
              <a href="admin/login.jsp" rel="alternate"><strong>登录</strong></a>
        </div>

        
        

        <div class="links-of-author motion-element">
             <span class="links-of-author-item"><a href="https://github.com/Alias4bb" target="_blank">Github</a></span>
              <span class="links-of-author-item"><a href="http://weibo.com/Alias21">Weibo</a></span>
               <span class="links-of-author-item"><a href="http://www.zhihu.com/people/bamboo_tt">Zhihu</a></span>
        </div>

      </section>

      

    </div>
  </aside>


    </main>

    <footer id="footer" class="footer">
        <div class="footer-inner">
            <div class="copyright" >
  
  &copy; &nbsp; 
  <span itemprop="copyrightYear">2015-2016</span>
  <span class="with-love">
    <i class="icon-heart"></i>
  </span>
  <span class="author" itemprop="copyrightHolder">By Alias</span>
</div>

<div class="powered-by">
  由 <a class="theme-link" href="http://hexo.io">Struts2</a> 强力驱动
</div>

<div class="theme-info">
  主题
  <a class="theme-link" href="https://github.com/iissnan/hexo-theme-next">
    NexT.Mist
  </a>
</div>



        </div>
    </footer>

    <div class="back-to-top"></div>
</div>

<script type="text/javascript" src="vendors/jquery/index.js?v=2.1.3"></script>

  
  
  
    <script type="text/javascript">
      postMotionOptions = {stagger: 100, drag: true};
    </script>
  

  
    
    

  


  
  
  <script type="text/javascript" src="vendors/fancybox/source/jquery.fancybox.pack.js"></script>
  <script type="text/javascript" src="js/fancy-box.js?v=0.4.4"></script>


  <script type="text/javascript" src="js/helpers.js?v=0.4.4"></script>
  

  <script type="text/javascript" src="vendors/velocity/velocity.min.js"></script>
  <script type="text/javascript" src="vendors/velocity/velocity.ui.min.js"></script>

  <script type="text/javascript" src="js/motion_global.js?v=0.4.4" id="motion.global"></script>



  <script type="text/javascript" src="js/search-toggle.js"></script>



<script type="text/javascript">
    $(document).ready(function () {
        if (CONFIG.sidebar === 'always') {
            displaySidebar();
        }
    });
</script>








<!-- lazyload -->
<script type="text/javascript" src="js/lazyload.js"></script>
<script type="text/javascript">
    jQuery(function () {
        jQuery("#posts img").lazyload({
            placeholder: "/images/loading.gif",
            effect: "fadeIn"
        });
    });
</script>
</body>
</html>
