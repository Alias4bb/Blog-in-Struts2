<%@ page language="java"  pageEncoding="utf-8"%>
<%@ include file="header.jsp"%>
  <!-- sidebar end -->
<%@ include file="sidebar.jsp"%>
  <!-- content start -->
  <div class="admin-content">

    <div class="am-cf am-padding">
      <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">文件 </strong> / <small>上传 </small></div>
    </div>

    

    <div class="am-g" id="file">
      <div class="am-u-sm-6">
      <form class="am-form" method ="POST" enctype ="multipart/form-data" action="Upload">
        <div class="am-form-group am-form-file">
  <button type="button" class="am-btn am-btn-danger am-btn-sm">
    <i class="am-icon-cloud-upload"></i> 选择要上传的文件</button>
  <input id="doc-form-file" type="file" name="uploadFile" multiple onchange="javascript:setImagePreview();">
</div>
<div id="file-list"></div>
<div class="am-form-group"><input type="submit" value="上传" class="am-btn am-btn-primary"/></div>
</form>
      </div>
   <div class="am-u-sm-6">
    缩略图  <img src="" id="img"  alt=""/>
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
<script src="assets/js/app.js"></script>
<script>
  $(function() {
    $('#doc-form-file').on('change', function() {
      var fileNames = '';
      $.each(this.files, function() {
        fileNames += '<span class="am-badge">' + this.name + '</span> ';
      });
      $('#file-list').html(fileNames);
    });});
function setImagePreview(avalue) {

//input
var docObj = document.getElementById("doc-form-file");

//img

var imgObjPreview = document.getElementById("img");

//div



if (docObj.files && docObj.files[0]) {

//火狐下，直接设img属性

imgObjPreview.style.display = 'block';
imgObjPreview.className="am-img-thumbnail am-radius";
imgObjPreview.style.width = '200px';

imgObjPreview.style.height = '200px';
//imgObjPreview.src = docObj.files[0].getAsDataURL();

//火狐7以上版本不能用上面的getAsDataURL()方式获取，需要一下方式

imgObjPreview.src = window.URL.createObjectURL(docObj.files[0]);

} else {

//IE下，使用滤镜

docObj.select();

var imgSrc = document.selection.createRange().text;

var localImagId = document.getElementById("file");

//必须设置初始大小

localImagId.style.width = "500px";

localImagId.style.height = "500px";

//图片异常的捕捉，防止用户修改后缀来伪造图片

try {

localImagId.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale)";

localImagId.filters.item("DXImageTransform.Microsoft.AlphaImageLoader").src = imgSrc;

} catch(e) {

alert("您上传的图片格式不正确，请重新选择!");

return false;

}

imgObjPreview.style.display = 'none';

document.selection.empty();

}

return true;

}
 
</script>
</body>
</html>
