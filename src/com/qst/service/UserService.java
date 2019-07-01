package com.qst.service;

import java.util.List;

import com.qst.dao.UserDao;
import com.qst.vo.User;

public class UserService {

	UserDao dao =new UserDao();
	
	public List<User> selectAll() {
		List<User> list = dao.selectAll();
		return list;
	}

	public void add(User u) {
		dao.insert(u);
	}

	public User selectByUid(int uid) {
		return dao.selectByUid(uid);
	}

	public void update(User u) {
		dao.update(u);
	}

	public void delete(int uid) {
		dao.delete(uid);
	}

	public User selectLogin(String uname, String upass) {
		// TODO Auto-generated method stub
		User user = dao.selectByUnamePass(uname,upass);
		System.out.println(user);
		return user;
	}

}
