package cn.kgc.bean;

import java.math.BigDecimal;

public class OrderItem {


	//订单项编号
	private int orderItemId;
	//商品名
	private String  name;
	//商品单价
	private BigDecimal price;
	//商品总价
	private BigDecimal totalMoney;
	//商品数量
	private int count;
	//订单编号
	private String orderId;
	
	
	@Override
	public String toString() {
		return "OrderItem [orderItemId=" + orderItemId + ", name=" + name + ", price=" + price + ", count=" + count
				+ ", totalMoney=" + totalMoney + ", orderId=" + orderId + "]";
	}
	public OrderItem() {
		super();
	}
	public OrderItem(int orderItemId, String name, BigDecimal price, int count, BigDecimal totalMoney, String orderId) {
		super();
		this.orderItemId = orderItemId;
		this.name = name;
		this.price = price;
		this.count = count;
		this.totalMoney = totalMoney;
		this.orderId = orderId;
	}
	public int getOrderItemId() {
		return orderItemId;
	}
	public void setOrderItemId(int orderItemId) {
		this.orderItemId = orderItemId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public BigDecimal getPrice() {
		return price;
	}
	public void setPrice(BigDecimal price) {
		this.price = price;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public BigDecimal getTotalMoney() {
		return totalMoney;
	}
	public void setTotalMoney(BigDecimal totalMoney) {
		this.totalMoney = totalMoney;
	}
	public String getOrderId() {
		return orderId;
	}
	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}

}
