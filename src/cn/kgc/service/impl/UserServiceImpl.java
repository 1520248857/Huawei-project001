package cn.kgc.service.impl;

import java.util.List;

import cn.kgc.bean.User;
import cn.kgc.dao.UserDao;
import cn.kgc.dao.impl.UserDaoImpl;
import cn.kgc.service.UserService;

public class UserServiceImpl implements UserService {

	UserDao userDao = new UserDaoImpl();

	@Override
	public User findUserByuserPhoneAndPassword(User user) {
		return userDao.findUserByuserPhoneAndPassword(user);
	}

	@Override
	public boolean saveUser(User user) {
		int count = userDao.saveUser(user);
		return count > 0 ? true : false;
	}

	@Override
	public boolean existsUserPhone(String userphone) {
		return userDao.existsUserPhone(userphone);
	}

	@Override
	public List<User> all() {
		return userDao.all();
	}

	@Override
	public int delete(int userId) {
		return userDao.delete(userId);
	}

}
