package cn.kgc.service.impl;

import java.util.Date;
import java.util.List;

import cn.kgc.bean.Cart;
import cn.kgc.bean.CartItems;
import cn.kgc.bean.Order;
import cn.kgc.bean.OrderItem;
import cn.kgc.bean.ProductItem;
import cn.kgc.dao.OrderDao;
import cn.kgc.dao.OrderItemDao;
import cn.kgc.dao.ProductItemDao;
import cn.kgc.dao.impl.OrderDaoImpl;
import cn.kgc.dao.impl.OrderItemDaoImpl;
import cn.kgc.dao.impl.ProductItemDaoImpl;
import cn.kgc.service.OrderService;

public class OrderServiceImpl implements OrderService {

	private OrderDao orderDao = new OrderDaoImpl();
	private OrderItemDao orderItemDao = new OrderItemDaoImpl();
	private ProductItemDao productsDao = new ProductItemDaoImpl();

	@Override
	public String saveOrder(Cart cart, int userid) {
		// 创建订单
		Order order = new Order();
		order.setDate(new Date());
		order.setTotalMoney(cart.getTotalMoney());
		order.setUserId(userid);
		order.setStatus(0);
		// 生成订单号
		String orderId = System.currentTimeMillis() + "" + userid;
		order.setOrderId(orderId);
		// 保存订单
		orderDao.saveOrder(order);
		// 遍历购物车中每一个商品
		for (CartItems item : cart.getMap().values()) {
			// 生成订单项
			OrderItem orderItem = new OrderItem(0, item.getName(), item.getPrice(), item.getCount(),
					item.getTotalMoney(), orderId);
			// 保存订单项
			orderItemDao.saveOrderItem(orderItem);
			// 修改商品的库存和销量
			ProductItem product = productsDao.selectById(item.getId());
			product.setStock(product.getStock() - item.getCount());
			product.setSales(product.getSales() + item.getCount());
			productsDao.update(product);

		}
		// 清空购物车
		cart.clean();

		return orderId;
	}

	@Override
	public List<Order> selectAll() {
		return orderDao.selectAll();
	}

	@Override
	public int delete(String orderId) {
		int num = orderDao.delete(orderId);
		return num;
	}

	@Override
	public Order selectOrderById(String orderId) {
		return orderDao.selectOrderById(orderId);
	}

}
