package cn.kgc.service.impl;

import java.util.List;

import cn.kgc.bean.Connection;
import cn.kgc.bean.Page;
import cn.kgc.bean.TotalProduct;
import cn.kgc.dao.ConnectionDao;
import cn.kgc.dao.impl.ConnectionDaoImpl;
import cn.kgc.service.ConnectionService;

public class ConnectionServiceImpl implements ConnectionService{
	
	private ConnectionDao connectionDao = new ConnectionDaoImpl();
	
	@Override
	public Connection selectConnectionByArgsIdAndSeriesId(int productId,int argsId, int seriesId,int colorId){
		return connectionDao.selectConnectionByArgsIdAndSeriesId(productId, argsId, seriesId, colorId);
	}
	
	public int selectProductIdByArgsIdAndSeriesId(int argsId, int seriesId, int colorId) {
		return connectionDao.selectProductIdByArgsIdAndSeriesId(argsId, seriesId, colorId);
	};

	@Override
	public List<Connection> selectAll() {
		return connectionDao.selectAll();
	}

	@Override
	public boolean add(Connection connection) {
		int num = connectionDao.add(connection);
		return num>0?true:false;
	}

	@Override
	public boolean delete(int connectionId) {
		int num = connectionDao.delete(connectionId);
		return num>0?true:false;
	}

	@Override
	public boolean update(Connection connection) {
		int num = connectionDao.update(connection);
		return num>0?true:false;
	}

	@Override
	public Connection selectByConnectionId(int connectionId) {
		return connectionDao.selectByConnectionId(connectionId);
	}

	@Override
	public Connection selectByCodeId(int codeId) {
		return connectionDao.selectByCodeId(codeId);
	}

	@Override
	public Page<Connection> page(int pageNo, int pageSize) {
		Page<Connection> page = new Page<Connection>();
		page.setPageSize(pageSize);
		
		long pageCount = connectionDao.selectCount();
		page.setPageCount(pageCount);
		
		long pageTotal = pageCount % pageSize == 0 ? pageCount / pageSize : pageCount / pageSize + 1;
		page.setPageTotal(pageTotal);
		page.setPageNo(pageNo);
		List<Connection> items = connectionDao.selectPageItems((page.getPageNo() - 1) * pageSize, pageSize);
		page.setItems(items);
		return page;
	}

	

}
