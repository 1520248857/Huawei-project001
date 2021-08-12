package cn.kgc.dao;

import java.util.List;

import cn.kgc.bean.User;

public interface UserDao {
	
	public User findUserByuserPhoneAndPassword(User user);


	public int saveUser(User user);

	
	public boolean existsUserPhone(String userphone);


	public List<User> all();

	
	public int delete(int userId);
}
