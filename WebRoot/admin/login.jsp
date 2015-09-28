<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>登录</title>
   <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
    <meta name="viewport"
        content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<!-- css hack -->

	<!-- 引用bootstrap和fontawesome -->
	<link href="http://cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
	<link href="http://cdn.bootcss.com/font-awesome/4.4.0/css/font-awesome.min.css" rel="stylesheet">
	<link href="css/default.css" rel="stylesheet">
	<link href="http://cdn.bootcss.com/sweetalert/1.1.0/sweetalert.min.css" rel="stylesheet">
	<script src="http://cdn.bootcss.com/sweetalert/1.1.0/sweetalert.min.js"></script>
     </head>
  
  <body id="particles-js" >
<div class="content" >
<div class="login">
<p class=" lead"><strong>登录</strong></p>
    <div class="form"><form id="form" action="admin/Login" method="post" role="form">
<div class="form-group "><div class="input-group input-group-sm"><span class="input-group-addon"><i class="fa fa-user"></i></span><input name="username" type="text" class="form-control color" placeholder="用户名" required="required"/><a class="tooltip-hide name" data-toggle="tooltip" data-placement="top" title="用户名不能为空"></a></div></div>

<div class="form-group"><div class="input-group input-group-sm"><span class="input-group-addon"><i class="fa fa-lock"></i></span><input name="password" type="password" class="form-control color" placeholder="密码" required="required"/><a href="#" class="tooltip-hide pass" data-toggle="tooltip" data-placement="right" title="密码不能为空">
</a></div></div>

<div class="form-group clearfix"><span class="label3"><input type="checkbox"/>记住我</span><span class="label2"><a href="forgetpassword.jsp">忘记密码？</a></span></div>
<div class="form-group "><input type="button" class="btn btn-primary btn-block" value="登陆" 
  /></div></form>
 <a href="default.jsp" class="return">返回</a>
</div></div></div>





<script src="http://cdn.maxjia.com/js/particles.min.js"></script>
<script type="text/javascript">
particlesJS('particles-js',
  {
    "particles": {
      "number": { 
        // 粒子数量
        "value": 100,
        "density": {
          "enable": true,
          "value_area": 800
        }
      },
      "color": {
        "value": "#ffffff"
      },
      "shape": {
        "type": "circle",
        "stroke": {
          "width": 0,
          "color": "#000000"
        },
        "polygon": {
          "nb_sides": 5
        },
        "image": {
          "src": "img/github.svg",
          "width": 100,
          "height": 100
        }
      },
      "opacity": {
        "value": 0.5,
        "random": false,
        "anim": {
          "enable": false,
          "speed": 1,
          "opacity_min": 0.1,
          "sync": false
        }
      },
      "size": {
        "value": 1,
        "random": true,
        "anim": {
          "enable": false,
          "speed": 20,
          "size_min": 0.1,
          "sync": false
        }
      },
      "line_linked": {
        "enable": true,
        "distance": 40,
        "color": "#fff",
        "opacity": 1,
        "width": 1
      },
      "move": {
        "enable": true,
        "speed": 3,
        "direction": "none",
        "random": false,
        "straight": false,
        "out_mode": "out",
        "attract": {
          "enable": false,
          "rotateX": 600,
          "rotateY": 1200
        }
      }
    },
    "interactivity": {
      "detect_on": "canvas",
      "events": {
        "onhover": {
          "enable": true,
          "mode": "grab"
        },
        "onclick": {
          "enable": true,
          "mode": "push"
        },
        "resize": true
      },
      "modes": {
        "grab": {
          "distance": 120,
          "line_linked": {
            "opacity": 1
          }
        },
        "bubble": {
          "distance": 400,
          "size": 40,
          "duration": 2,
          "opacity": 8,
          "speed": 3
        },
        "repulse": {
          "distance": 300
        },
        "push": {
          "particles_nb": 4
        },
        "remove": {
          "particles_nb": 2
        }
      }
    },
    "retina_detect": true,
    "config_demo": {
      "hide_card": false,
      "background_color": "#b61924",
      "background_image": "",
      "background_position": "50% 50%",
      "background_repeat": "no-repeat",
      "background_size": "cover"
    }
  }

);
</script>
 <script src="http://cdn.bootcss.com/jquery/2.1.4/jquery.min.js"></script>
    <script src="http://cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
  </body>

</html>
