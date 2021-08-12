package cn.kgc.service;

import java.util.List;

import cn.kgc.bean.Cart;
import cn.kgc.bean.Order;

public interface OrderService {

	// 订单的生成
	public String saveOrder(Cart cart , int userid);
	
	public List<Order> selectAll();// 查询

	public int delete(String orderId);// 删除

	public Order selectOrderById(String orderId);
}
