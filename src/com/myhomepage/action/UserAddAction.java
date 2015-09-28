package com.myhomepage.action;

import com.myhomepage.utils.Db;
import com.opensymphony.xwork2.ActionSupport;

public class UserAddAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	private String username;
	private String password;
	private String email;


	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}



	





	public String execute(){
		Db db=new Db();
		String sql="insert into blog_users (u_name,u_pass,u_email)values('"+username+"','"+password+"','"+email+"')";
		db.doSelect(sql);
		if(db.doInsert1(sql)!=0){
		return SUCCESS;}else{
			return ERROR;
		}
	}

	
}
