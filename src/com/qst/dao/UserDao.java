package com.qst.dao;

import java.util.ArrayList;
import java.util.List;

import com.qst.vo.User;

public class UserDao {

	private static List<User> list=new ArrayList<>();
	
	static {
		list.add(new User(1,"zs","123",21,"2009-09-09"));
		list.add(new User(2,"ls","123",22,"2008-09-09"));
		list.add(new User(3,"ww","123",23,"2007-09-09"));
	}
	public List<User> selectAll() {
		return list;
	}
	public void insert(User u) {
		list.add(u);
	}
	public User selectByUid(int uid) {
		for(User u:list) {
			if(u.getUid()==uid)
				return u;
		}
		return new User();
	}
	public void update(User u) {
		for(User us:list) {
			if(us.getUid()==u.getUid()) {
				list.remove(us);
				list.add(u);
			}
		}
	}
	public void delete(int uid) {
		/*
		 * for(int i=0;i<list.size();i++) { if(list.get(i).getUid()==uid) {
		 * list.remove(i--); break; } }
		 */
		
		  for(User u:list) { 
			  if(u.getUid()==uid) {
				  list.remove(u);
				  break;
			}
		}
		 
	}
	public User selectByUnamePass(String uname, String upass) {
		// TODO Auto-generated method stub
		  System.out.println("111");
		  for(User u : list) {
			  System.out.println(u.getUname()+","+u.getUpass());
			  if(uname.equals(u.getUname()) && upass.equals(u.getUpass())) {
				  System.out.println("1");
				  return u;
			  }
		}
		return null;
	}

}
