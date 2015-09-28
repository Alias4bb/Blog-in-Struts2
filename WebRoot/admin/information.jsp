<%@ page language="java"  pageEncoding="utf-8"%>
<%@ include file="header.jsp"%>
  <!-- sidebar end -->
<%@ include file="sidebar.jsp"%>
  <!-- content start -->
  <div class="admin-content">

    <div class="am-cf am-padding">
      <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">个人资料</strong> / <small>Personal information</small></div>
    </div>

    <hr/>

    <div class="am-g">

      

      <div class="am-u-sm-12 am-u-md-8 ">
        <form class="am-form am-form-horizontal" action="Update" method="post">
          <div class="am-form-group">
            <label for="user-name" class="am-u-sm-3 am-form-label">姓名 / Name</label>
            <div class="am-u-sm-9">
              <input type="text" id="user-name" name="username" placeholder="姓名 / Name">
              <small>输入你的名字，让我们记住你。</small>
            </div>
          </div>

          <div class="am-form-group">
            <label for="user-email" class="am-u-sm-3 am-form-label">电子邮件 / Email</label>
            <div class="am-u-sm-9">
              <input type="email" id="user-email" name="email" placeholder="输入你的电子邮件 / Email">
              <small>邮箱你懂得...</small>
            </div>
          </div>

          <div class="am-form-group">
            <label for="user-website" class="am-u-sm-3 am-form-label">网站/ Website</label>
            <div class="am-u-sm-9">
              <input type="text" id="user-website" name="website" placeholder="输入你的网站 / Website">
            </div>
          </div>

         

          <div class="am-form-group">
            <div class="am-u-sm-9 am-u-sm-push-3">
              <button type="submit" class="am-btn am-btn-primary">保存修改</button>
            </div>
          </div>
        </form>
      </div>
    </div>
    </div>
  </div>
</div>
  <!-- content end -->

</div>

<%@ include file="footer.jsp"%>