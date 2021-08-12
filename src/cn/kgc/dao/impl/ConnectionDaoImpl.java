package cn.kgc.dao.impl;

import java.util.ArrayList;
import java.util.List;

import cn.kgc.bean.Connection;
import cn.kgc.bean.TotalProduct;
import cn.kgc.dao.ConnectionDao;
import cn.kgc.utils.BaseDao;

public class ConnectionDaoImpl extends BaseDao implements ConnectionDao {

	@Override
	public Connection selectConnectionByArgsIdAndSeriesId(int productId, int argsId, int seriesId, int colorId) {
		String sql = "select * from `connection` where productId=? and argsId=? and seriesId=? and colorId=?";
		Connection con = null;
		Object[] arr = { productId, argsId, seriesId, colorId };
		try {
			resultSet = executeQuery(sql, arr);
			if (resultSet.next()) {
				con = new Connection(resultSet.getInt(1), resultSet.getInt(2), resultSet.getInt(3), resultSet.getInt(4),
						resultSet.getInt(5), resultSet.getInt(6));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(connection, preparedStatement, resultSet);
		}
		return con;
	}

	@Override
	public List<Connection> selectAll() {
		List<Connection> list = new ArrayList<Connection>();
		String sql = "select * from `connection`";
		try {
			resultSet = executeQuery(sql, null);
			while (resultSet.next()) {
				Connection con = new Connection(resultSet.getInt(1), resultSet.getInt(2), resultSet.getInt(3),
						resultSet.getInt(4), resultSet.getInt(5), resultSet.getInt(6));
				list.add(con);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(connection, preparedStatement, resultSet);
		}
		return list;
	}

	@Override
	public int add(Connection con) {
		int num = 0;
		String sql = "insert into `connection` values(null,?,?,?,?,?)";
		Object[] arr = { con.getProductId(), con.getArgsId(), con.getSeriesId(), con.getColorId(), con.getCodeId() };
		try {
			num = executeUpdate(sql, arr);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(connection, preparedStatement, resultSet);
		}
		return num;
	}

	@Override
	public int delete(int connectionId) {
		int num = 0;
		String sql = "delete from `connection` where connectionId = ?";
		Object[] arr = { connectionId };
		try {
			num = executeUpdate(sql, arr);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(connection, preparedStatement, resultSet);
		}
		return num;
	}

	@Override
	public int update(Connection con) {
		int num = 0;
		String sql = "update `connection` set productId=?, argsId=?, seriesId=?, colorId=? where connectionId=?";
		Object[] arr = { con.getProductId(), con.getArgsId(), con.getSeriesId(), con.getColorId(),
				con.getConnectionId() };
		try {
			num = executeUpdate(sql, arr);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(connection, preparedStatement, resultSet);
		}
		return num;
	}

	@Override
	public Connection selectByConnectionId(int connectionId) {
		String sql = "select * from `connection` where connectionId = ?";
		Connection con = null;
		Object[] arr = { connectionId };
		try {
			resultSet = executeQuery(sql, arr);
			if (resultSet.next()) {
				con = new Connection(resultSet.getInt(1), resultSet.getInt(2), resultSet.getInt(3), resultSet.getInt(4),
						resultSet.getInt(5), resultSet.getInt(6));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(connection, preparedStatement, resultSet);
		}
		return con;
	}

	@Override
	public int selectProductIdByArgsIdAndSeriesId(int argsId, int seriesId, int colorId) {
		String sql = "select productId from `connection` where argsId=? and seriesId=? and colorId=?";
		int productId = 0;
		Object[] arr = { argsId, seriesId, colorId };
		try {
			resultSet = executeQuery(sql, arr);
			if (resultSet.next()) {
				productId = resultSet.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(connection, preparedStatement, resultSet);
		}
		return productId;
	}

	@Override
	public Connection selectByCodeId(int codeId) {
		Connection con = null;
		String sql = "select * from connection where codeId = ?";
		Object[] arr = { codeId };
		try {
			resultSet = executeQuery(sql, arr);
			if (resultSet.next()) {
				con = new Connection(resultSet.getInt(1), resultSet.getInt(2), resultSet.getInt(3), resultSet.getInt(4),
						resultSet.getInt(5), resultSet.getInt(6));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(connection, preparedStatement, resultSet);
		}
		return con;
	}

	@Override
	public List<Connection> selectPageItems(long begin, long size) {
		List<Connection> list = new ArrayList<Connection>();
		String sql = "select * from connection limit ?,?";
		Object[] arr = { begin, size };
		try {
			resultSet = executeQuery(sql, arr);
			while (resultSet.next()) {
				Connection connection = new Connection(resultSet.getInt(1),
						resultSet.getInt(2),
						resultSet.getInt(3),
						resultSet.getInt(4),
						resultSet.getInt(5),
						resultSet.getInt(6));
				list.add(connection);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(connection, preparedStatement, resultSet);
		}
		return list;
	}
	
	@Override
	public long selectCount() {
		int count = 0;
		String sql = "select count(*) from `connection`";
		try {
			resultSet = executeQuery(sql, null);
			if (resultSet.next()) {
				count = resultSet.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(connection, preparedStatement, resultSet);
		}
		return count;
	}

}
