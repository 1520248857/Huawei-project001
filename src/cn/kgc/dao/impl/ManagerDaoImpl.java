package cn.kgc.dao.impl;

import java.util.ArrayList;
import java.util.List;

import cn.kgc.bean.Manager;
import cn.kgc.dao.ManagerDao;
import cn.kgc.utils.BaseDao;

public class ManagerDaoImpl extends BaseDao implements ManagerDao {

	@Override
	public Manager FindManagerBymanagernameandpassword(Manager manager) {
		Manager manager2 = null;
		String sql = "select * from manager where managerName=? and password=?";
		try {
			resultSet = executeQuery(sql, new Object[] { manager.getManagerName(), manager.getPassword() });
			while (resultSet.next()) {
				manager2 = new Manager(resultSet.getInt(1), resultSet.getString(2), resultSet.getString(3));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(connection, preparedStatement, resultSet);
		}
		return manager2;
	}
	
	@Override
	public List<Manager> selectAll() {
		List<Manager> list=new ArrayList<>();
		String sql="select * from manager";
		try {
			resultSet=executeQuery(sql, null);
			while(resultSet.next()) {
				Manager manager=new Manager(resultSet.getInt(1), resultSet.getString(2), resultSet.getString(3));
				list.add(manager);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  finally {
			closeAll(connection, preparedStatement, resultSet);
		}
		return list;
	}

	@Override
	public int add(Manager manager) {
	int count=-1;
		String sql="insert into manager values(null,?,?)";
		try {
			Object[]  params = {manager.getManagerName(),manager.getPassword()};
			count=executeUpdate(sql, params);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  finally {
			closeAll(connection, preparedStatement, resultSet);
		}
		return count;
	}

	@Override
	public int update(Manager manager) {
		int num = 0;
		String sql = "update manager set managerName=?, password=? where managerId=?";
		Object[] params = { manager.getManagerName(), manager.getPassword(),manager.getManagerId()};
		try {
			num = executeUpdate(sql, params);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(connection, preparedStatement, resultSet);
		}
		return num;
	}

	@Override
	public int delete(int managerId) {
		String sql = "delete from `manager` where managerId=?";
		int result = 0;
		try {
			result = executeUpdate(sql, new Object[] { managerId});
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(connection, preparedStatement, resultSet);
		}
		return result;
	}

	@Override
	public Manager queryById(int managerId) {
		String sql = "select * from `manager` where managerId=?;";
		Manager manager = null;
		try {
			resultSet = executeQuery(sql, new Object[] { managerId });
			while (resultSet.next()) {
				manager = new Manager(resultSet.getInt(1), resultSet.getString(2), resultSet.getString(3));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(connection, preparedStatement, resultSet);
		}
		return manager;
	}
	

}
