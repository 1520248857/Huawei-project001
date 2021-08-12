package cn.kgc.service.impl;

import java.util.List;

import cn.kgc.bean.Manager;
import cn.kgc.dao.ManagerDao;
import cn.kgc.dao.impl.ManagerDaoImpl;
import cn.kgc.service.ManagerService;

public class ManagerServiceImpl implements ManagerService {

	ManagerDao managerdao = new ManagerDaoImpl();

	@Override
	public Manager FindManagerBymanagernameandpassword(Manager manager) {
		return managerdao.FindManagerBymanagernameandpassword(manager);
	}

	@Override
	public List<Manager> selectAll() {
		return managerdao.selectAll();
	}

	@Override
	public int add(Manager manager) {
		return managerdao.add(manager);
	}

	@Override
	public int update(Manager manager) {
		return managerdao.update(manager);
	}

	@Override
	public int delete(int managerId) {
		return managerdao.delete(managerId);
	}

	@Override
	public Manager queryById(int managerId) {
		return managerdao.queryById(managerId);
	}

}
