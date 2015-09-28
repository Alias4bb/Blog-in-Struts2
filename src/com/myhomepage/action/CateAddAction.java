package com.myhomepage.action;

import com.myhomepage.utils.Db;
import com.opensymphony.xwork2.ActionSupport;

public class CateAddAction extends ActionSupport  {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String type;
	private String description;



	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
	public String execute(){
		Db db=new Db();
		String sql="insert into blog_categories (c_type,c_description)values('"+type+"','"+description+"')";
		db.doSelect(sql);
		if(db.doInsert1(sql)!=0){
		return SUCCESS;}else{
			return ERROR;
		}
	}

}
