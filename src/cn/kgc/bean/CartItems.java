package cn.kgc.bean;

import java.math.BigDecimal;

public class CartItems {

	private Integer id;
	private String img;
	private String name;
	private BigDecimal price;
	private int count;
	private BigDecimal totalMoney;
	
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
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
	public CartItems(Integer id, String img, String name, BigDecimal price, int count, BigDecimal totalMoney) {
		super();
		this.id = id;
		this.img = img;
		this.name = name;
		this.price = price;
		this.count = count;
		this.totalMoney = totalMoney;
	}
	public CartItems() {
		super();
	}
	@Override
	public String toString() {
		return "CartItems [id=" + id + ", img=" + img + ", name=" + name + ", price=" + price + ", count="
				+ count + ", totalMoney=" + totalMoney + "]";
	}
}
