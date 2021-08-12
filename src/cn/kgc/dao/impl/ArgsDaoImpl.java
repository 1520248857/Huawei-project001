package cn.kgc.dao.impl;

import java.util.ArrayList;
import java.util.List;

import cn.kgc.bean.Args;
import cn.kgc.bean.ProductItem;
import cn.kgc.dao.ArgsDao;
import cn.kgc.utils.BaseDao;

public class ArgsDaoImpl extends BaseDao implements ArgsDao{

	@Override
	public List<Args> selectAll() {
		List<Args> list = new ArrayList<Args>();
		String sql = "select * from args";
		try {
			resultSet = executeQuery(sql, null);
			while (resultSet.next()) {
				Args args = new Args(resultSet.getInt(1),
						resultSet.getString(2),
						resultSet.getBigDecimal(3),resultSet.getInt(4));
				list.add(args);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(connection, preparedStatement, resultSet);
		}
		return list;
	}

	@Override
	public Args selectById(int argsId) {
		Args args = null;
		String sql = "select * from args where argsId=?";
		Object[] arr = { argsId };
		try {
			resultSet = executeQuery(sql, arr);
			if (resultSet.next()) {
				args = new Args(resultSet.getInt(1),
						resultSet.getString(2),
						resultSet.getBigDecimal(3),resultSet.getInt(4));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(connection, preparedStatement, resultSet);
		}
		return args;
	}

	@Override
	public int add(Args args) {
		int num = 0;
		String sql = "insert into args values(null,?,?,?)";
		Object[] arr = {args.getRam(),args.getPrice(),args.getCodeId()};
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
	public int delete(int argsId) {
		int num = 0;
		String sql = "delete from args where argsId = ?";
		Object[] arr = { argsId };
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
	public int update(Args args) {
		int num = 0;
		String sql = "update args set ram=?,price=?,codeId=? where argsId=?";
		Object[] arr = {args.getRam(),args.getPrice(),args.getCodeId(),args.getArgsId()};
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
	public Args selectByCodeId(int codeId) {
		Args args = null;
		String sql = "select * from args where codeId=?";
		Object[] arr = { codeId };
		try {
			resultSet = executeQuery(sql, arr);
			if (resultSet.next()) {
				args = new Args(resultSet.getInt(1),
						resultSet.getString(2),
						resultSet.getBigDecimal(3),resultSet.getInt(4));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(connection, preparedStatement, resultSet);
		}
		return args;
	}
}