<%@ page language="java"  pageEncoding="utf-8"%>
<%@ include file="header.jsp"%>
  <!-- sidebar end -->
<%@ include file="sidebar.jsp"%>
  <!-- content start -->
  <div class="admin-content">

    <div class="am-cf am-padding">
      <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">管理</strong> / <small>类别</small></div>
    </div>

    <div class="am-g">
      <div class="am-u-sm-12 am-u-md-6">
        <div class="am-btn-toolbar">
          <div class="am-btn-group am-btn-group-xs">
            <button type="button" class="am-btn am-btn-default"  data-am-modal="{target: '#your-modal', closeViaDimmer: 0, width:550,height:450}"><span class="am-icon-plus"></span> 新增</button>
            <div class="am-modal am-modal-no-btn" tabindex="-1" id="your-modal">
  <div class="am-modal-dialog">
    <div class="am-modal-hd">添加类别<hr>
      <a href="javascript: void(0)" class="am-close am-close-spin" data-am-modal-close>&times;</a>
    </div>
    <div class="am-modal-bd">
        <div class="am-u-sm-8 am-u-sm-offset-2">
         <form class="am-form am-form-horizontal" action="CateAdd" method="post">
          <div class="am-form-group"><label class="am-u-sm-4 am-form-label">类别</label><input type="text" name="type"  require="required"></div>
           <div class="am-form-group"><label class="am-u-sm-4 am-form-label">类别描述</label><input type="text" name="description" require="required"></div>
          
             <div class="am-form-group"><input type="submit" class="am-btn am-btn-primary" value="添加"></div>
         </form>
         </div>
    </div>
  </div>
</div>
            
          </div>
        </div>
      </div>
     
    </div>
<%Db db1=new Db();

  String sql2="select * from blog_categories";
  rs=db1.doSelect(sql2);%>

    <div class="am-g">
      <div class="am-u-sm-12">
        <form class="am-form">
          <table class="am-table am-table-striped am-table-hover table-main">
            <thead>
              <tr>
               <th class="table-name">类别</th><th class="table-title">描述</th>
             <th>备注</th> </tr>
          </thead>
          <tbody><% while(rs.next()){%>
            <tr>
 
          
        
              <td><span><%=rs.getString(2)%></span></td>
              <td><span><%=rs.getString(3)%></span></td>
             
     <td><a href="DeleteCate?id=<%=rs.getString(1) %>" class="am-btn am-btn-default delete"><span class="am-icon-trash-o"></span> 删除</a>
      <button class="am-btn am-btn-default"><span class="am-icon-edit"></span>修改</button>
     </td>
            </tr> <%} db1.close();%>
        
          </tbody>
        </table>
 
          <hr />
     
        </form>
      </div>

    </div>
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


<script>
 $(function(){ //定义方法 
$('table td span').click(function(){ //定义点击事件
 if(!$(this).is('.input')){
//如果当前是.input类 
$(this).addClass('input').html('<input type="text" value="'+ $(this).text() +'" />').find('input').focus().blur(function(){
//当前添加类获得元素新插入一个input通过遍历获得input定义伪类，当失去焦点以后在定义一个方法
$(this).parent().removeClass('input').html($(this).val() || 0);
//当前查找每个元素，删除掉input类获得input所有元素的值并且和0 
}); } }).hover(function(){ //定义伪类
$(this).addClass('hover'); //当前添加伪类
 },function(){ //定义方法
$(this).removeClass('hover'); //当鼠标移开后删除伪类 
}); }); 
</script>
</body>
</html>
