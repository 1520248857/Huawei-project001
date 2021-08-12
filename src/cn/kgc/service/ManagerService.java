package cn.kgc.service;

import java.util.List;

import cn.kgc.bean.Manager;

public interface ManagerService {

	public Manager FindManagerBymanagernameandpassword(Manager manager);

	// 查询全部
	public List<Manager> selectAll();

	// 添加管理员
	public int add(Manager manager);

	// 修改管理员
	public int update(Manager manager);

	// 删除管理员
	public int delete(int managerId);

	// 通过id查找Manager
	public Manager queryById(int managerId);
}
