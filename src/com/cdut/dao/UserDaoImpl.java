package com.cdut.dao;

import java.util.List;

import org.hibernate.query.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.cdut.hibernate.HibernateSessionFactory;
import com.cdut.po.User;

public class UserDaoImpl implements UserDao {

	public void addUser(User user) {
		// TODO Auto-generated method stub

		Session session =HibernateSessionFactory.getSession();
		Transaction transaction=null;
		try{
			transaction=session.beginTransaction();
			session.save(user);
			transaction.commit();
		}catch(Exception e){
			e.printStackTrace();
			transaction.rollback();
		}
		HibernateSessionFactory.closeSession();
	}

	//检索账号判断用户名是否存在
	public User findUserByAccount(String account) {
		// TODO Auto-generated method stub

		Session session = HibernateSessionFactory.getSession();
		String shql = "from User where account=:tag";
		try {
			System.err.println("begin");
			List list = session.createQuery(shql).setString("tag", account).list();
			System.err.println("over");
			HibernateSessionFactory.closeSession();
			if (list.size() == 0) { // 用户名不存在
				return null;
			} else {
				return (User) list.get(0);
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.err.println("nonono");
			System.err.println(e);
		}
		return null;

	}
	/*public static void findByAccount(String account) {
		// TODO Auto-generated method stub
		
		
		Session session =HibernateSessionFactory.getSession();
		String hql="from User where account=:tag";	
		List list=session.createQuery(hql).setString("tag", account).list();
		HibernateSessionFactory.closeSession();
		if(list.size()==0){   //用户名不存在
			System.out.println("no user");
		}
		else{
			System.out.println(list.size());
		}
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		findByAccount("1");
		System.out.println("find over");

	}*/

}
