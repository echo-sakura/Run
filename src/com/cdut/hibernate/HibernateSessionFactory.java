package com.cdut.hibernate;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.cfg.Configuration;

public class HibernateSessionFactory {
	private static String CONFIG_FILE_LOCATION = "/hibernate.cfg.xml"; //配置文件
	private static final ThreadLocal<Session> threadLocal = new ThreadLocal<Session>();//定义ThreadLocal对象 
	private static Configuration configuration = new Configuration(); //定义Configuration对象
	private static org.hibernate.SessionFactory sessionFactory;// 定义SessionFactory对象
	private static String configFile = CONFIG_FILE_LOCATION;
	static {
		try {
			configuration.configure(configFile);//读取配置文件
			sessionFactory = configuration.buildSessionFactory();//创建SessionFactory对象
		} catch (Exception e) {
			System.err.println("%%%% Error Creating SessionFactory %%%%");
			e.printStackTrace();
		}
	}

	private HibernateSessionFactory() {
	}

	public static Session getSession() throws HibernateException {
		Session session = (Session) threadLocal.get();//获得Session对象
		if (session == null || !session.isOpen()) {//判断Session是否为空或者未打开
			if (sessionFactory == null) {//如果没有创建SessionFactory对象
				rebuildSessionFactory();
			}
			//不为空，调用openSession方法创建
			session = (sessionFactory != null) ? sessionFactory.openSession() : null;
			threadLocal.set(session);//保存Session对象
		}
		return session;
	}

	public static void rebuildSessionFactory() {
		try {
			configuration.configure(configFile);// 读取配置文件
			sessionFactory = configuration.buildSessionFactory();// 创建SessionFactory对象
		} catch (Exception e) {
			System.err.println("%%%% Error Creating SessionFactory %%%%");
			e.printStackTrace();
		}
	}

	public static void closeSession() throws HibernateException {
		Session session = (Session) threadLocal.get();// 获得Session对象
		threadLocal.set(null);//将当前线程Session对象从ThreadLocal对象中删除
		if (session != null) {
			session.close();
		}
	}

	public static org.hibernate.SessionFactory getSessionFactory() {// 获取SessionFactory
		return sessionFactory;
	}

	public static void setConfigFile(String configFile) {// 设置新的配置文件
		HibernateSessionFactory.configFile = configFile;
		sessionFactory = null;
	}

	public static Configuration getConfiguration() {// 获得Configuration对象
		return configuration;
	}
}
