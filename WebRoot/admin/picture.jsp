<%@ page language="java"  pageEncoding="utf-8"%>
<%@ include file="header.jsp"%>
  <!-- sidebar end -->
<%@ include file="sidebar.jsp"%>
  <!-- content start -->
  <div class="admin-content">

    <div class="am-cf am-padding">
      <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">管理</strong> / <small>照片</small></div>
    </div>

    <ul class="am-avg-sm-2 am-avg-md-4 am-avg-lg-6 am-margin gallery-list">
      <% Db db1=new Db();

       String sql1="select * from blog_pictures";
       rs=db1.doSelect(sql1);
      
       while(rs.next()){
       %>
      <li>
       
          <img class="am-img-thumbnail am-img-bdrs" src="<%=path%>/images/<%=rs.getString("p_name")%>" alt=""/>
          
          <div class="gallery-desc"><%=rs.getString("p_date")%></div>
        
      </li>
     <%} %>
    </ul>

   
    </div>
 </div>
  <!-- content end -->

</div>

<%@ include file="footer.jsp"%>