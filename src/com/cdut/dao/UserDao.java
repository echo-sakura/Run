package com.cdut.dao;

import com.cdut.po.User;

public interface UserDao {

	public void addUser(User user);
	public User findUserByAccount(String account);
}
