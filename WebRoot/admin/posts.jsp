<%@ page language="java"  pageEncoding="utf-8"%>
<%@ include file="header.jsp"%>
  <!-- sidebar end -->
<%@ include file="sidebar.jsp"%>
  <!-- content start -->
  <div class="admin-content">

    <div class="am-cf am-padding">
      <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">管理 </strong> / <small>文章</small></div>
    </div>

    <div class="am-g">
      <div class="am-u-sm-12 am-u-md-6">
        <div class="am-btn-toolbar">
          <div class="am-btn-group am-btn-group-xs">
            <button type="button" class="am-btn am-btn-default" onclick="javascript:window.location.href='write_post.jsp';"><span class="am-icon-plus"></span> 新增</button>
          
           
          </div>
        </div>
      </div>
     
      
    </div>
<%  int pageSize=3;
               int pageNow=1;//当前页面
               int rowCount=0;//信息总条数
               int pageCount=0;//总页数
               //接受用户希望显示页数
               String s_pageNow= request.getParameter("pageNow");
               
               if(s_pageNow!=null){
                 pageNow=Integer.parseInt(s_pageNow);
               }
               
  
  Db db2=new Db();
     String sql2="select count(*) from blog_contents";
       String sql3="select * from blog_contents where c_id limit "+(pageNow-1)*pageSize+","+pageSize+"";
   rs=db2.doSelect(sql2);
     	if(rs.next()){
      			   rowCount= rs.getInt(1);
      			   
      			}
      if(rowCount%pageSize==0){
                    pageCount=rowCount/pageSize;
                }else{
                     pageCount=rowCount/pageSize+1;
                }
      rs=db.doSelect(sql3);
   %>
    <div class="am-g">
      <div class="am-u-sm-12">
        
          <table class="am-table am-table-striped am-table-hover table-main">
            <thead>
              <tr>
              <th class="table-title">文章标题</th><th class="table-type">类别</th><th class="table-author am-hide-sm-only">作者</th><th class="table-date am-hide-sm-only">创建日期</th><th>备注</th>
              </tr>
          </thead>
          <tbody>
          <%
          while(rs.next()){ %>
            <tr>
            
               
              <td><a href="<%=path%>/Posts?id=<%=rs.getString(1)%>"><%=rs.getString(2) %></a></td>
              <td><%=rs.getString(6) %></td>
              <td class="am-hide-sm-only"><%=rs.getString(5) %></td>
              <td class="am-hide-sm-only"><%=rs.getString(3) %></td>
            <td> <a href="DeletePost?id=<%=rs.getString(1) %>" class="am-btn am-btn-default delete"><span class="am-icon-trash-o"></span> 删除</a>
            <a href="EditPost?id=<%=rs.getString(1) %>" class="am-btn am-btn-default"><span class="am-icon-edit"></span>修改</a></td>
            </tr>
       <%}db2.close(); %>
          
          </tbody>
        </table>
          <div class="am-cf">
 
  <div class="am-fr">
    <ul class="am-pagination">
     <%
			   //显示超链接
			   
			   //上一页
			   if(pageNow!=1)
			   out.println("<li><a href= posts.jsp?pageNow="+(pageNow-1)+">&laquo;</a></li>");
			   
			   
			   for(int i=1;i<=pageCount;i++){
			      out.println("<li><a href= posts.jsp?pageNow="+i+">"+i+"</a></li>");
			   
			   
			   }
			   
			    //下一页
			    if(pageNow!=pageCount)
			   out.println("<li><a href= posts.jsp?pageNow="+(pageNow+1)+">&raquo;</li>");
			    %>   
    </ul>
  </div>
</div>
          <hr />
          <p>@Alias不会写Shell</p>
       
      </div>

    </div>
</div>
  <!-- content end -->

</div>
<%@ include file="footer.jsp"%>
