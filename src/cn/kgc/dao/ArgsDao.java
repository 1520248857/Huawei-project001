package cn.kgc.dao;

import java.util.List;

import cn.kgc.bean.Args;

public interface ArgsDao {

	public List<Args> selectAll();

	public Args selectById(int argsId);

	public int add(Args args);

	public int delete(int argsId);

	public int update(Args args);
//	ͨ��codeID��ѯ
	public Args selectByCodeId(int codeId);
}
