package com.myhomepage.action;

import java.sql.ResultSet;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;



import net.sf.json.JSONObject;

import org.apache.struts2.interceptor.ServletRequestAware;






import com.myhomepage.utils.Db;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport implements 
		ServletRequestAware {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private HttpServletRequest request;
    private String result;
    private ResultSet rs;
    public String getResult() {
        return result;
    }
    public void setResult(String result) {
        this.result = result;
    }
     
    @Override
	public void setServletRequest(HttpServletRequest request) {
		// TODO Auto-generated method stub
		this.request=request;
	}
//��֤�û�������
	  public String login() throws Exception{
		  HttpSession session = request.getSession();
		  String name=request.getParameter("username");
		  String pass=request.getParameter("password");

		
		  Db db=new Db();
		  String sql="select * from blog_users where u_name='"+name+"' and u_pass='"+pass+"'";
		  rs=db.doSelect(sql);
		 if(rs.next()){
			  
     session.setAttribute("u_id", rs.getString(1));
		  return SUCCESS;
		  }else{
         return ERROR;
		  }
		 
	  }
	
	     
//Ajax��֤��¼
	  public String excuteAjax(){
	         
	        try {
	            //��ȡ����
	        	  String name=request.getParameter("username");
	    		  String pass=request.getParameter("password");
	    		  Db db=new Db();
            //�����ݴ洢��map���ת����json�������ݣ�Ҳ�����Լ��ֶ�����json��������
	            Map<String,Object> map = new HashMap<String,Object>();
     
	            
	            String sql="select * from blog_users where u_name='"+name+"' and u_pass='"+pass+"'";
	  		  rs=db.doSelect(sql);
	  		  if(rs.next()){
	  			 
	  		      map.put("success","true");
	  		  }else{
	             map.put("success", "false");
	  		  }
	  		  db.close();
	            JSONObject json = JSONObject.fromObject(map);//��map����ת����json��������
	       
	            result = json.toString();//��result��ֵ�����ݸ�ҳ��
	           
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        return SUCCESS;
	    }
	 
	 
	     
	}


	


	

