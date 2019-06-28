package com.cdut.service;

import com.cdut.dao.UserDao;
import com.cdut.dao.UserDaoImpl;
import com.cdut.po.User;

public class UserServiceImpl implements UserService {
	private UserDao userDao =  new UserDaoImpl();
	public boolean saveUser(User user){
		String account=user.getAccount();
		//如果用户不存在，允许添加用户
		if(userDao.findUserByAccount(account)==null){
			userDao.addUser(user);
			return true;
		}else{
			return false;
		}
	}
	public boolean allowLogin(String account,String password){
		User user=userDao.findUserByAccount(account);
		if(user==null){
			return false;
		}else{
			if(password.equals(user.getPwd())){
				return true;
			}else{
				return false;
			}
		}
	}
	public User getUserInfo(String account) {
		return userDao.findUserByAccount(account);
	}

}
