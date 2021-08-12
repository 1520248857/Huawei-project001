package cn.kgc.dao.impl;

import java.util.ArrayList;
import java.util.List;

import cn.kgc.bean.User;
import cn.kgc.dao.UserDao;
import cn.kgc.utils.BaseDao;


public class UserDaoImpl extends BaseDao implements UserDao {

	@Override
	public User findUserByuserPhoneAndPassword(User user) {
		String sql = "select * from user where userphone=? and password=?";
		User u=null;
		try {
			resultSet = executeQuery(sql, new Object[] {user.getUserphone(),user.getPassword()});
			if (resultSet.next()) {
				u = new User(resultSet.getInt(1),resultSet.getString(2),resultSet.getString(3),resultSet.getString(4)); 
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			closeAll(connection, preparedStatement, resultSet);
		}
		return u;
	}

	@Override
	public int saveUser(User user) {
		String sql = "insert into user values(null,?,?,?)";
		int count = 0;
		try {
			count = executeUpdate(sql, new Object[] {user.getUserphone(),user.getPassword(),user.getEmil()});
			return count;
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			closeAll(connection, preparedStatement, resultSet);
		}
		return 0;
	}

	@Override
	public boolean existsUserPhone(String userphone) {
		String sql = "select count(*) from user where userphone = ?";
		boolean result = false;
		try {
			resultSet = executeQuery(sql, new Object[] {userphone});
			if (resultSet.next()) {
				int count = resultSet.getInt(1);
				if (count>0) {
					return result = true;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			closeAll(connection, preparedStatement, resultSet);
		}
		return result;
	}

	@Override
	public List<User> all() {
		List<User> users = new ArrayList<User>();
		String sql = "select * from user";
		try {
			resultSet = executeQuery(sql, null);
			while (resultSet.next()) {
				User user = new User(resultSet.getInt(1),resultSet.getString(2),resultSet.getString(3),resultSet.getString(4));
				users.add(user);
			}
			return users;
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		} finally {
			closeAll(connection, preparedStatement, resultSet);
		}
		return null;
	}
	@Override
	public int delete(int userId) {
		String sql = "delete from `user` where userId=?";
		int result = 0;
		try {
			result = executeUpdate(sql, new Object[] { userId});
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(connection, preparedStatement, resultSet);
		}
		return result;
	}

}
