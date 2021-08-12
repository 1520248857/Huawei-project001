package cn.kgc.bean;

import java.math.BigDecimal;
import java.util.Date;

public class Order {

	// 订单编号
	private String orderId;
	// 订单时间
	private Date date;
	// 总价格
	private BigDecimal totalMoney;
	// 总数量
	private int totalCount;
	// 状态（是否发货签收）
	private int status;
	// 用户编号
	private int userId;

	@Override
	public String toString() {
		return "Order [orderId=" + orderId + ", date=" + date + ", totalMoney=" + totalMoney + ", totalCount="
				+ totalCount + ", status=" + status + ", userId=" + userId + "]";
	}

	public Order() {
		super();
	}

	public Order(String orderId, Date date, BigDecimal totalMoney, int totalCount, int status, int userId) {
		super();
		this.orderId = orderId;
		this.date = date;
		this.totalMoney = totalMoney;
		this.totalCount = totalCount;
		this.status = status;
		this.userId = userId;
	}

	public String getOrderId() {
		return orderId;
	}

	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public BigDecimal getTotalMoney() {
		return totalMoney;
	}

	public void setTotalMoney(BigDecimal totalMoney) {
		this.totalMoney = totalMoney;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

}
