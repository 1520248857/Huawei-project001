package cn.kgc.service.impl;

import java.util.List;

import cn.kgc.bean.Page;
import cn.kgc.bean.ProductItem;
import cn.kgc.dao.ProductItemDao;
import cn.kgc.dao.impl.ProductItemDaoImpl;
import cn.kgc.service.ProductItemService;

public class ProductItemServiceImpl implements ProductItemService {

	private ProductItemDao productsItemsDao = new ProductItemDaoImpl();

	@Override
	public List<ProductItem> selectAll() {
		return productsItemsDao.selectAll();
	}

	@Override
	public ProductItem selectById(int id) {
		return productsItemsDao.selectById(id);
	}

	@Override
	public boolean add(ProductItem items) {
		int num = productsItemsDao.add(items);
		return num > 0 ? true : false;
	}

	@Override
	public boolean delete(int id) {
		int num = productsItemsDao.delete(id);
		return num > 0 ? true : false;
	}

	@Override
	public boolean update(ProductItem items) {
		int num = productsItemsDao.update(items);
		return num > 0 ? true : false;
	}
	@Override
	public ProductItem selectBycodeId(int codeId) {
		// TODO Auto-generated method stub
		return productsItemsDao.selectBycodeId(codeId);
	}

}
