<%@ page language="java"  pageEncoding="utf-8"%>
<%@ include file="header.jsp"%>
  <!-- sidebar end -->
<%@ include file="sidebar.jsp"%>
  <!-- content start -->

  <div class="admin-content">

    <div class="am-cf am-padding">
      <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">首页</strong> / <small>概要</small></div>
    </div>

   
    

   <% Db db2=new Db();
   String p_id=(String)session.getAttribute("p_id");
     String sql2="select * from blog_contents where c_id='"+p_id+"'";
     rs=db2.doSelect(sql2);
     if(rs.next()){
    %>

    
      <div class="am-u-md-8">
        <div class="am-panel am-panel-default"><script>window.onload=function(){ 
       document.getElementById('content').innerHTML="<%=rs.getString(4)%>";
      }</script>
           <div class="am-panel-bd"><h1 class="am-text-primary ">修改文章</h1></div><div class="am-panel-bd">
           <form action="Edit_Post" class="am-form am-form-horizontal" method="post">
             <div class="am-form-group"><input type="text" value="<%=rs.getString("c_title") %>" name="title" placeholder="标题">
              <input type="hidden" value="<%=p_id %>" name="id">
             </div>
              <div class="am-form-group"><div id="content"></div></div>
          </div>
        </div>
      </div>
      
      <div class="am-u-md-4">
          <div class="am-form-group">发布日期<input type="text" id="date" value="<%=rs.getString("c_create") %>" name="date" > </div><%} %>
          <div class="am-form-group">类别<select name="category"><%Db db1=new Db();
          String sql1="select c_type from  blog_categories";
          rs=db1.doSelect(sql1);
          while(rs.next()){
           %><option><%=rs.getString(1) %></option><%} db1.close();%></select></div>
          <div class="am-form-group">标签<input type="text" name="tags"></div>
           <div class="am-form-group"><input type="submit" value="修改文章" class="am-btn am-btn-default"/></div>
      </div>
      </form>
    </div>


  <!-- content end -->

</div>
<a href="#" class="am-show-sm-only admin-menu" data-am-offcanvas="{target: '#admin-offcanvas'}">
  <span class="am-icon-btn am-icon-th-list"></span>
</a>

<footer>
  <hr>
<p style="text-align:center">© 2015-2016 CopyRight By Alias.</p>
</footer>

<!--[if lt IE 9]>
<script src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="assets/js/amazeui.ie8polyfill.min.js"></script>
<![endif]-->

<!--[if (gte IE 9)|!(IE)]><!-->
 <script src="http://cdn.bootcss.com/jquery/2.1.4/jquery.min.js"></script>

<!--<![endif]-->
<script src="assets/js/amazeui.min.js"></script>

<script src="assets/js/amazeui.datetimepicker.min.js"></script>
<script src="assets/js/app.js"></script>
<script src="assets/js/amazeui.datetimepicker.zh-CN.js"></script>
<script type="text/javascript" src="assets/js/trumbowyg.min.js">
</script>

<script>
 $(document).ready(function() {
    // 日期时间控件
    
    $('#content').trumbowyg();
    $('#date').datetimepicker({
      format:'yyyy-mm-dd hh:ii',
       language: 'zh-CN',
       update:new Date(),
     
       todayBtn:true,
       
    });
    });

</script><
</body>
</html>
