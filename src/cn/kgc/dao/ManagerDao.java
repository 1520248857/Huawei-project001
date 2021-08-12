package cn.kgc.dao;

import java.util.List;

import cn.kgc.bean.Manager;

public interface ManagerDao {

	public Manager FindManagerBymanagernameandpassword(Manager manager);

	public List<Manager> selectAll();

	public int add(Manager manager);

	public int update(Manager manager);

	public int delete(int managerId);

	public Manager queryById(int managerId);

}
