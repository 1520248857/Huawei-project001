package cn.kgc.dao.impl;

import java.util.ArrayList;
import java.util.List;

import cn.kgc.bean.ProductItem;
import cn.kgc.dao.ProductItemDao;
import cn.kgc.utils.BaseDao;

public class ProductItemDaoImpl extends BaseDao implements ProductItemDao {

	@Override
	public List<ProductItem> selectAll() {
		List<ProductItem> list = new ArrayList<ProductItem>();
		String sql = "select * from productItem";
		try {
			resultSet = executeQuery(sql, null);
			while (resultSet.next()) {
				ProductItem items = new ProductItem(resultSet.getInt(1), resultSet.getString(2), resultSet.getString(3),
						resultSet.getInt(4), resultSet.getInt(5), resultSet.getInt(6));
				list.add(items);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(connection, preparedStatement, resultSet);
		}
		return list;
	}

	@Override
	public ProductItem selectById(int id) {
		ProductItem items = null;
		String sql = "select * from productItem where productId=?";
		Object[] arr = { id };
		try {
			resultSet = executeQuery(sql, arr);
			if (resultSet.next()) {
				items = new ProductItem(resultSet.getInt(1), resultSet.getString(2), resultSet.getString(3),
						resultSet.getInt(4), resultSet.getInt(5), resultSet.getInt(6));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(connection, preparedStatement, resultSet);
		}
		return items;
	}

	@Override
	public int add(ProductItem items) {
		int num = 0;
		String sql = "insert into productItem values(null,?,?,?,?,?)";
		Object[] arr = { items.getProductName(), items.getImage(), items.getSales(), items.getStock(),
				items.getCodeId() };
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
	public int delete(int id) {
		int num = 0;
		String sql = "delete from productItem where productId = ?";
		Object[] arr = { id };
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
	public int update(ProductItem items) {
		int num = 0;
		String sql = "update productItem set productName=?, image=?, sales=?, stock=?, codeId=? where productId=?";
		Object[] arr = { items.getProductName(), items.getImage(), items.getSales(), items.getStock(),
				items.getCodeId(), items.getProductId() };
		try {
			num = executeUpdate(sql, arr);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(connection, preparedStatement, resultSet);
		}
		return num;
	}

	public ProductItem selectBycodeId(int codeId) {
		String sql = "select * from productItem where codeId=?";
		ProductItem items = null;
		try {
			resultSet = executeQuery(sql, new Object[] { codeId });
			if (resultSet.next()) {
				items = new ProductItem(resultSet.getInt(1), resultSet.getString(2), resultSet.getString(3),
						resultSet.getInt(4), resultSet.getInt(5), resultSet.getInt(6));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return items;
	}

}
