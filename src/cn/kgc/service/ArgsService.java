package cn.kgc.service;

import java.util.List;

import cn.kgc.bean.Args;

public interface ArgsService {

	public List<Args> selectAll();

	public Args selectById(int argsId);

	public boolean add(Args args);

	public boolean delete(int argsId);

	public boolean update(Args args);
	public Args selectByCodeId(int codeId);
}
