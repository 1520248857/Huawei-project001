package cn.kgc.dao;

import java.util.List;

import cn.kgc.bean.ProductItem;

public interface ProductItemDao {

	// 查询全部
	public List<ProductItem> selectAll();

	// 根据id查询
	public ProductItem selectById(int id);

	// 添加商品
	public int add(ProductItem items);

	// 删除商品
	public int delete(int id);

	// 修改商品
	public int update(ProductItem items);
	
	public ProductItem selectBycodeId(int codeId);

}
