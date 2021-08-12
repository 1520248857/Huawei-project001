package cn.kgc.dao.impl;

import cn.kgc.bean.OrderItem;
import cn.kgc.dao.OrderItemDao;
import cn.kgc.utils.BaseDao;

public class OrderItemDaoImpl extends BaseDao implements OrderItemDao {

	@Override
	public int saveOrderItem(OrderItem item) {
		String sql = "insert into `orderItem`(`orderItemId`,`name`,`price`,`count`,`totalMoney`,`orderId`) values(?,?,?,?,?,?)";
		int num = 0;
		try {
			num = executeUpdate(sql, new Object[] { item.getOrderItemId(), item.getName(), item.getPrice(),
					item.getCount(), item.getTotalMoney(), item.getOrderId() });
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(connection, preparedStatement, resultSet);
		}
		return num;
	}

}
