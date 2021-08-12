package cn.kgc.service;

import java.util.List;

import cn.kgc.bean.Page;
import cn.kgc.bean.ProductItem;

public interface ProductItemService {

	// 查询全部
	public List<ProductItem> selectAll();

	// 根据id查询
	public ProductItem selectById(int id);

	// 添加商品
	public boolean add(ProductItem items);

	// 删除商品
	public boolean delete(int id);

	// 修改商品
	public boolean update(ProductItem items);
	
	public ProductItem selectBycodeId(int codeId);



}
