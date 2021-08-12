package cn.kgc.dao;

import java.util.List;

import cn.kgc.bean.Order;

public interface OrderDao {

	public int saveOrder(Order order);

	public List<Order> selectAll();// 查询

	public int delete(String orderId);// 删除

	public Order selectOrderById(String orderId);

}
