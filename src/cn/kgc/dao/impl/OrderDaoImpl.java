package cn.kgc.dao.impl;

import java.util.ArrayList;
import java.util.List;

import cn.kgc.bean.Order;
import cn.kgc.dao.OrderDao;
import cn.kgc.utils.BaseDao;

public class OrderDaoImpl extends BaseDao implements OrderDao {

	@Override
	public int saveOrder(Order order) {
		String sql = "insert into `order`(`orderId`,`date`,`totalMoney`,`totalCount`,`status`,`userId`) values(?,?,?,?,?,?);";
		int num = 0;
		try {
			num = executeUpdate(sql, new Object[] { order.getOrderId(), order.getDate(), order.getTotalMoney(),
					order.getTotalCount(), order.getStatus(), order.getUserId() });
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(connection, preparedStatement, resultSet);
		}
		return num;
	}

	@Override
	public List<Order> selectAll() {
		String sql = "select * from `order`;";
		List<Order> list = new ArrayList<Order>();
		try {
			resultSet = executeQuery(sql, new Object[] {});
			while (resultSet.next()) {
				Order order = new Order(resultSet.getString(1), resultSet.getDate(2), resultSet.getBigDecimal(3),
						resultSet.getInt(4), resultSet.getInt(5), resultSet.getInt(6));
				list.add(order);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(connection, preparedStatement, resultSet);
		}
		return list;
	}

	@Override
	public int delete(String orderId) {
		String sql = "delete from `order` where orderId;";
		int result = 0;
		try {
			result = executeUpdate(sql, new Object[] { orderId });
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(connection, preparedStatement, resultSet);
		}
		return result;
	}

	@Override
	public Order selectOrderById(String orderId) {
		String sql = "select * from `order` where orderId=?;";
		Order order = null;
		try {
			resultSet = executeQuery(sql, new Object[] { orderId });
			while (resultSet.next()) {
				order = new Order(resultSet.getString(1), resultSet.getDate(2), resultSet.getBigDecimal(3),
						resultSet.getInt(4), resultSet.getInt(5), resultSet.getInt(6)
				);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(connection, preparedStatement, resultSet);
		}
		return order;
	}

}
