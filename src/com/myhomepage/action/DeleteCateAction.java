package com.myhomepage.action;

import com.myhomepage.utils.Db;
import com.opensymphony.xwork2.ActionSupport;

public class DeleteCateAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String id;
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	public String execute(){
	
		 Db db=new Db();
		 String sql="delete from blog_categories where c_id='"+id+"'";
		 db.doSelect(sql);
		 db.doDelete(sql);
		return SUCCESS;
		
		
	}
}
