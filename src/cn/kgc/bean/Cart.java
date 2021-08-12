package cn.kgc.bean;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.Map;

public class Cart {

	private Map<Integer, CartItems> map = new HashMap<Integer, CartItems>();

	public Map<Integer, CartItems> getMap() {
		return map;
	}

	public void setMap(Map<Integer, CartItems> map) {
		this.map = map;
	}

	@Override
	public String toString() {
		return "Cart [map=" + map + "]";
	}
	
	//��ӹ��ﳵ
	public void addItems(CartItems item) {
		CartItems items = map.get(item.getId());
		if(items!=null){
			items.setCount(items.getCount()+1);
			items.setTotalMoney(items.getPrice().multiply(new BigDecimal(items.getCount())));
		}else {
			map.put(item.getId(), item);
		}
	}
	//ɾ�����ﳵ
	public void deleteCartItems(int id) {
		map.remove(id);
	}
	//��չ��ﳵ
	public void clean() {
		map.clear();
	}
	
	public BigDecimal updateCount(int id, int count) {
		// 先从购物车中取出商品
		CartItems item = map.get(id);
		// 如果为null，说明之前没有此商品
		if (item != null) {
			// 修改商品数量和总金额
			item.setCount(count);
			item.setTotalMoney(item.getPrice().multiply(new BigDecimal(item.getCount())));
			return item.getTotalMoney();
		}
		return new BigDecimal(0);
	}

	//����������
	public int getTotalCount() {
		int count = 0;
		for(CartItems cartItems:map.values()) {
			count+=cartItems.getCount();
		}
		return count;
		
	}
	//�����ܽ��
	public BigDecimal getTotalMoney() {
		BigDecimal money = new BigDecimal(0);
		for(CartItems cartItems:map.values()) {
			money=money.add(cartItems.getTotalMoney());
		}
		return money;
		
	}
	

}
