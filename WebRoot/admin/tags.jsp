<%@ page language="java"  pageEncoding="utf-8"%>
<%@ include file="header.jsp"%>
  <!-- sidebar end -->
<%@ include file="sidebar.jsp"%>
  <!-- content start -->
  <div class="admin-content">

    <div class="am-cf am-padding">
      <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">管理 </strong> / <small>标签 </small></div>
    </div>

   

    <div class="am-g">
      <div class="am-u-md-8">
        <div class="am-panel am-panel-default">
  <div class="am-panel-hd">所有标签</div>
  <div class="am-panel-bd"><%Db db1=new Db();
   String sql1="select * from blog_tags";
    rs=db1.doSelect(sql1);
    while(rs.next()){
   %>
    <span><a href="<%=path%>/Tags?name=<%=rs.getString(2)%>"class="am-btn am-btn-default"><%=rs.getString(2) %></a></span><%}db1.close(); %>
  </div>
</div>
      </div>
  <div class="am-u-md-4">
      <form class="am-form" method="post" action="TagAdd">

          <div class="am-form-group"><label>标签</label><input type="text" name="tags"></div>
          
          <div class="am-form-group"><input type="submit" value="增加标签" class="am-btn am-btn-primary"></div>
        </form></div>
    </div>
</div>
  <!-- content end -->

</div>

<%@ include file="footer.jsp"%>
