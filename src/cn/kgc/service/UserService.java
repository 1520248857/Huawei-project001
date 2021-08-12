package cn.kgc.service;

import java.util.List;

import cn.kgc.bean.User;

public interface UserService {

	/**
	 * 根据用户名，密码查找指定的用户
	 * 
	 * @param user
	 * @return 返回查找的用户<br/>
	 *         返回null说明用户不存在
	 */
	public User findUserByuserPhoneAndPassword(User user);

	/**
	 * 保存用户信息
	 * 
	 * @param user 要保存的用户对象
	 * @return 返回语句影响的行数
	 */
	public boolean saveUser(User user);

	/**
	 * 验证用户名已存在
	 * 
	 * @param username
	 * @return 用户存在返回true<br/>
	 *         用户不存在返回false
	 */
	public boolean existsUserPhone(String userphone);

	// 查找所有用户
	public List<User> all();

	// 删除用户
	public int delete(int userId);
}
