package cn.kgc.service;

import java.util.List;

import cn.kgc.bean.Connection;
import cn.kgc.bean.Page;
import cn.kgc.bean.TotalProduct;

public interface ConnectionService {

	public Connection selectConnectionByArgsIdAndSeriesId(int productId,int argsId, int seriesId,int colorId);

	public List<Connection> selectAll();

	public boolean add(Connection connection);

	public boolean delete(int connectionId);

	public boolean update(Connection connection);
	
	public Connection selectByConnectionId(int connectionId);

	public int selectProductIdByArgsIdAndSeriesId(int argsId, int seriesId, int colorId);
	
	public Connection selectByCodeId(int codeId);
	
	public Page<Connection> page(int pageNo, int pageSize);

}
