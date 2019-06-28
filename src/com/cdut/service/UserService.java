package com.cdut.service;

import com.cdut.po.User;

public interface UserService {

	public boolean saveUser(User user);
	public boolean allowLogin(String account,String password);
	public User getUserInfo(String account);
}
