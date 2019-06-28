package com.cdut.action;

import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Session;

import com.cdut.dao.UserDao;
import com.cdut.dao.UserDaoImpl;
import com.cdut.hibernate.HibernateSessionFactory;
import com.cdut.po.User;
import com.cdut.service.UserService;
import com.cdut.service.UserServiceImpl;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport{
	private String account;
    private String password;
    private UserDao userDao=new UserDaoImpl();
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
	
	public String execute() throws Exception {
		//HttpServletRequest request = ServletActionContext.getRequest();
		System.out.println("start login");
		if(userDao.findUserByAccount(account)==null){
			String message="用户名不存在，请注册!";
			ActionContext.getContext().put("tipMessage",message);
			return INPUT;
		}else{
			if(userService.allowLogin(account, password)) {
				User user =  userService.getUserInfo(account);
				
				Map session = ActionContext.getContext().getSession();
				session.put("user", user);
				return "success";
			}else {
				String message="用户名或者密码错误!";
				ActionContext.getContext().put("tipMessage",message);
				return INPUT;
			}
		}
	
		
    }
	
}
