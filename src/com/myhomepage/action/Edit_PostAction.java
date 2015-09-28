package com.myhomepage.action;

import com.myhomepage.utils.Db;
import com.opensymphony.xwork2.ActionSupport;

public class Edit_PostAction extends ActionSupport {
	private static final long serialVersionUID = 1L;

	private String id;
	private String title;
	private String date;
	private String category;
	private String content;
	



	public String execute(){
		
		String sql="update blog_contents set c_title='"+title+"',c_content='"+content+"',c_create='"+date+"',c_type='"+category+"' where c_id='"+id+"'";
		
		Db db=new Db();	
		db.doSelect(sql);
		
		int i=db.doUpdate1(sql);
		if(i!=0){//更新用户信息
	
		return SUCCESS;}else{
			return ERROR;
		}
		
		
		
	}






	public String getTitle() {
		return title;
	}






	public void setTitle(String title) {
		this.title = title;
	}






	public String getDate() {
		return date;
	}






	public void setDate(String date) {
		this.date = date;
	}






	public String getCategory() {
		return category;
	}






	public void setCategory(String category) {
		this.category = category;
	}






	public String getId() {
		return id;
	}






	public void setId(String id) {
		this.id = id;
	}






	public String getContent() {
		return content;
	}






	public void setContent(String content) {
		this.content = content;
	}






	

}
