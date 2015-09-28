<%@ page language="java"  pageEncoding="utf-8"%>
<%@ include file="header.jsp"%>
  <!-- sidebar end -->
<%@ include file="sidebar.jsp"%>
  <!-- content start -->
  <div class="admin-content">

    <div class="am-cf am-padding">
      <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">管理 </strong> / <small>用户 </small></div>
    </div>

    <div class="am-g">
      <div class="am-u-sm-12 am-u-md-6">
        <div class="am-btn-toolbar">
          <div class="am-btn-group am-btn-group-xs">
            <button type="button" class="am-btn am-btn-default"  data-am-modal="{target: '#your-modal', closeViaDimmer: 0, width:600,height:500}"><span class="am-icon-plus"></span> 新增</button>
          <div class="am-modal am-modal-no-btn" tabindex="-1" id="your-modal">
  <div class="am-modal-dialog">
    <div class="am-modal-hd">添加用户<hr>
      <a href="javascript: void(0)" class="am-close am-close-spin" data-am-modal-close>&times;</a>
    </div>
    <div class="am-modal-bd">
        <div class="am-u-sm-8 am-u-sm-offset-2">
         <form class="am-form am-form-horizontal" action="UserAdd" method="post">
          <div class="am-form-group"><label class="am-u-sm-3 am-form-label">用户名</label><input type="text" name="username" placeholder="输入你的用户名" require="required"></div>
           <div class="am-form-group"><label class="am-u-sm-3 am-form-label">密码</label><input type="password" name="password" placeholder="输入你的密码" require="required"></div>
            <div class="am-form-group"><label class=" am-u-sm-3 am-form-label">确认密码</label><input type="password" name="password1" require="required"></div>
             <div class="am-form-group"><label class=" am-u-sm-3 am-form-label">邮箱</label><input type="email" name="email" placeholder="输入你的邮箱" require="required"></div>
             <div class="am-form-group"><input type="submit" class="am-btn am-btn-primary" value="确认注册"></div>
         </form>
         </div>
    </div>
  </div>
</div>
           
          </div>
        </div>
      </div>
     
    
    </div>

    <div class="am-g">
      <div class="am-u-sm-12">
      
          <table class="am-table am-table-striped am-table-hover table-main">
            <thead>
              <tr>
              <th class="table-user">用户名</th><th class="table-email">邮箱</th><th class="table-website">网站</th>  <th class="table-check">备注</th>
              </tr>
          </thead>
          <tbody>
    
            <tr>
               <% Db db1=new Db();
          
        String sql1="select * from blog_users";
        rs=db1.doSelect(sql1);while(rs.next()){
        %>  
         
              <td><%=rs.getString(3) %></td>
              <td><%=rs.getString(4) %></td>
              <td ><%=rs.getString(5) %></td>
           
             <td> <a href="DeleteUser?id=<%=rs.getString(1) %>" class="am-btn am-btn-default "><span class="am-icon-trash-o"></span> 删除</a></td>
            </tr>
           <%}db1.close(); %>
              
          </tbody>
        </table>
   
          <hr />
        
     
      </div>

    </div>
</div>
  <!-- content end -->

</div>
<%@ include file="footer.jsp"%>