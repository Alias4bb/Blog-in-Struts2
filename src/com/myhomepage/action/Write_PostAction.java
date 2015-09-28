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
    String title=request.getParameter("title"); //获取文章标题
    String date=request.getParameter("date"); //获取文章创建日期
    String category=request.getParameter("category");//获取文章类别
    String content=request.getParameter("content");//获取文章内容
    String tags=request.getParameter("tags");//获取标签及其id再将id和文章id赋予blog_relationships
    
    Db db=new Db();
    String author = null;
   
    String sql="select u_name from blog_users where u_id='"+u_id+"'";
     rs=db.doSelect(sql);
     if(rs.next()){
    	 author=rs.getString(1);//获取作者名字
     }
    String sql1="insert into blog_contents (c_title,c_create,c_content,c_author,c_type) values('"+title+"','"+date+"','"+content+"','"+author+"','"+category+"')";
    if(db.doInsert1(sql1)!=0){//插入文章记录
        return SUCCESS;
    }else{
    	return ERROR;
    }

	}
}
