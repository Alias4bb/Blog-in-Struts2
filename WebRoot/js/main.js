 function btn(){
             
            var $btn = $("input.btn");
            $btn.bind("click",function(){
                 //应该验证参数是否为空（其实也没必要）
                $.ajax({
                    type:"post",
                    url:"admin/excuteAjax",
                    data:{
                        username:$("input[name=username]").val(),
                        password:$("input[name=password]").val(),
                    
                    },
                    dataType:"json",//json格式
                    success:function(data){
                    	console.log(data);
                    	jsondata=$.parseJSON(data);
                     
                        if(jsondata.success=="true"){
                        	$("#form").submit();
                        	
                        }else{
                        	swal("用户名或者密码错误","(=・ω・=)");
                        }
                         
                    },
                    error:function(){
                        console.log("服务器状况不好~");
                    }
                });
            });
        }
 $(function () { $('.tooltip-hide').tooltip('hide');});
      
        $(document).ready(function(){           
            btn();
            $("input").blur(function(){
            	if($("input[name=username]").val()==null||$("input[name=username]").val()=="")
                {$('.name').tooltip('show');}else{
                	$('.name').tooltip('hide');
                }
                if($("input[name=password]").val()==null||$("input[name=password]").val()==""){
             	   $('.pass').tooltip('show');
                }else{
                	$('.pass').tooltip('hide');
                }
            });
            
        });