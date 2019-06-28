package com.cdut.action;

import com.cdut.po.User;
import com.cdut.service.UserService;
import com.cdut.service.UserServiceImpl;
import com.opensymphony.xwork2.ActionSupport;

public class RegisterAction extends ActionSupport{
	private String account;
	private String password;
	private String phone;
	private String email;
	private UserService userService=new UserServiceImpl();
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public UserService getUserService() {
		return userService;
	}
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	public String execute() throws Exception {
		User user=new User();
		user.setAccount(account);
		user.setPwd(password);
		user.setPhone(phone);
		user.setEmail(email);
        if(userService.saveUser(user)){
        	return "success";
        }
        else{
        	this.addActionError("用户已存在，请重新输入用户名");
        	 return INPUT;
        }
       
    }

}
