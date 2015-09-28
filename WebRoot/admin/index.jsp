<%@ page language="java"  pageEncoding="utf-8"%>
<%@ include file="header.jsp"%>
  <!-- sidebar end -->
<%@ include file="sidebar.jsp"%>
  <!-- content start -->
  <div class="admin-content">

    <div class="am-cf am-padding">
      <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">首页</strong> / <small>概要</small></div>
    </div>
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
    <ul class="am-avg-sm-1 am-avg-md-4 am-margin am-padding am-text-center admin-content-list ">
      <li><a href="posts.jsp" class="am-text-success"><span class="am-icon-btn am-icon-paragraph"></span><br/>文章数量<br/><%=p_count %></a></li>
      <li><a href="categories.jsp" class="am-text-warning"><span class="am-icon-btn am-icon-list"></span><br/>分类数量<br/><%=c_count %></a></li>
      <li><a href="tags.jsp" class="am-text-danger"><span class="am-icon-btn am-icon-tags"></span><br/>标签数量<br/><%=t_count %></a></li>
     
    </ul>

    

   

      <div class="am-u-md-6">
        <div class="am-panel am-panel-default">
          <div class="am-panel-hd am-cf" data-am-collapse="{target: '#collapse-panel-4'}">关于<span class="am-icon-chevron-down am-fr" ></span></div>
          <div id="collapse-panel-4" class="am-panel-bd am-collapse am-in">
          <h1>感谢</h1>
        <p class="am-text-primary">  感谢<a href="http://amzeui.org"><strong>AmazeUi</strong> </a>和 <a href="http://getbootstrap.com"><strong>Bootstrap</strong></a>,
              以及富文本编辑器<a href="http://alex-d.github.io/Trumbowyg/">trumbowyg</a>和<a href="http://www.bootcss.com/p/bootstrap-datetimepicker/">日期选择器datetimepicker</a>等提供的帮助。 </p>
              <h2>Bug</h2>
              <blockquote><ol><li>分类修改及用户权限</li><li>标签未能完整实现联动功能(后台不能添加标签)</li><li>前端的标签云不完整</li><li>忘记密码功能未做木有邮箱服务器</li></ol></blockquote>
          </div>
        </div>
</div>
      <div class="am-u-md-6">
        <div class="am-panel am-panel-default">
          <div class="am-panel-hd am-cf" data-am-collapse="{target: '#collapse-panel-3'}">最近留言<span class="am-icon-chevron-down am-fr" ></span></div>
          <div class="am-panel-bd am-collapse am-in am-cf" id="collapse-panel-3">
            <ul class="ds-recent-comments" data-num-items="10" data-show-avatars="1" data-show-time="1" data-show-admin="1" data-excerpt-length="70"></ul>
<!--多说js加载开始，一个页面只需要加载一次 -->
<script type="text/javascript">
var duoshuoQuery = {short_name:"xsstest"};
(function() {
    var ds = document.createElement('script');
    ds.type = 'text/javascript';ds.async = true;
    ds.src = 'http://static.duoshuo.com/embed.js';
    ds.charset = 'UTF-8';
    (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(ds);
})();
</script>
          
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
  <!-- content end -->

</div>
<%@ include file="footer.jsp"%>

