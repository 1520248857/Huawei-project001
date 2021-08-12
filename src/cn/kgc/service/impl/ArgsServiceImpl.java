package cn.kgc.service.impl;

import java.util.List;

import cn.kgc.bean.Args;
import cn.kgc.dao.ArgsDao;
import cn.kgc.dao.impl.ArgsDaoImpl;
import cn.kgc.service.ArgsService;

public class ArgsServiceImpl implements ArgsService {

	private ArgsDao argsDao = new ArgsDaoImpl();
	
	@Override
	public List<Args> selectAll() {
		return argsDao.selectAll();
	}

	@Override
	public Args selectById(int argsId) {
		return argsDao.selectById(argsId);
	}

	@Override
	public boolean add(Args args) {
		int num = argsDao.add(args);
		return num>0?true:false;
	}

	@Override
	public boolean delete(int argsId) {
		int num = argsDao.delete(argsId);
		return num>0?true:false;
	}

	@Override
	public boolean update(Args args) {
		int num = argsDao.update(args);
		return num>0?true:false;
	}

	@Override
	public Args selectByCodeId(int codeId) {
		return argsDao.selectByCodeId(codeId);
	}

}
