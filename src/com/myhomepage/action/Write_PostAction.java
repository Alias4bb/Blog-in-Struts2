package com.myhomepage.action;

import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.myhomepage.utils.Db;
import com.opensymphony.xwork2.ActionSupport;

public class Write_PostAction extends ActionSupport implements ServletRequestAware {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	HttpServletRequest request;
	private ResultSet rs;
	@Override
	public void setServletRequest(HttpServletRequest request) {
		// TODO Auto-generated method stub
    this.request=request;
	}
	public String execute() throws Exception{
    HttpSession session=request.getSession();
    int u_id=Integer.parseInt((String) session.getAttribute("u_id"));
    String title=request.getParameter("title"); //��ȡ���±���
    String date=request.getParameter("date"); //��ȡ���´�������
    String category=request.getParameter("category");//��ȡ�������
    String content=request.getParameter("content");//��ȡ��������
    String tags=request.getParameter("tags");//��ȡ��ǩ����id�ٽ�id������id����blog_relationships
    
    Db db=new Db();
    String author = null;
   
    String sql="select u_name from blog_users where u_id='"+u_id+"'";
     rs=db.doSelect(sql);
     if(rs.next()){
    	 author=rs.getString(1);//��ȡ��������
     }
    String sql1="insert into blog_contents (c_title,c_create,c_content,c_author,c_type) values('"+title+"','"+date+"','"+content+"','"+author+"','"+category+"')";
    if(db.doInsert1(sql1)!=0){//�������¼�¼
        return SUCCESS;
    }else{
    	return ERROR;
    }

	}
}
