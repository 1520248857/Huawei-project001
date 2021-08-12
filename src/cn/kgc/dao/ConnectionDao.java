package cn.kgc.dao;

import java.util.List;

import cn.kgc.bean.Connection;
import cn.kgc.bean.TotalProduct;

public interface ConnectionDao {

	public Connection selectConnectionByArgsIdAndSeriesId(int productId, int argsId, int seriesId, int colorId);

	public List<Connection> selectAll();

	public int add(Connection connection);

	public int delete(int connectionId);

	public int update(Connection connection);

	public Connection selectByConnectionId(int connectionId);

	public int selectProductIdByArgsIdAndSeriesId(int argsId, int seriesId, int colorId);

	public Connection selectByCodeId(int codeId);

	// 获得数量
	public long selectCount();

	// 获得每一页的集合
	public List<Connection> selectPageItems(long begin, long size);

}
