package com.poly.constant;

import com.poly.dao.UserDao;
import com.poly.dao.impl.UserDaoImpl;
import com.poly.entity.User;

public class demo {

	public static void main(String[] args) {
		UserDao dao = new UserDaoImpl();
		User user = dao.findByUsernameAndPassword("user", "123");
		System.out.println(user.toString());
	}

}
