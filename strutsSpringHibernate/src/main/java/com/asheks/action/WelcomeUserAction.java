package com.asheks.action;

import com.asheks.model.User;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class WelcomeUserAction extends ActionSupport implements ModelDriven{
 
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	User user =new User();

	
	// all struts logic here
	public String execute() {
 
		return "success";
 
	}

	@Override
	public void validate() {
		if("baaj".equals(user.getUsername())){
			addActionMessage("You are valid user!");
		}else{
			if(user.getPassword()==null){
				addFieldError("password", getText("password.required"));
			}
			if(user.getUsername()==null){
				addFieldError("username", getText("username.required"));
			}
			addActionError("Invalid inputs");
		}
	}

	public Object getModel() {
		// TODO Auto-generated method stub
		return user;
	}

}