package cn.kgc.service;

import java.util.List;

import cn.kgc.bean.Page;
import cn.kgc.bean.ProductItem;

public interface ProductItemService {

	// ��ѯȫ��
	public List<ProductItem> selectAll();

	// ����id��ѯ
	public ProductItem selectById(int id);

	// �����Ʒ
	public boolean add(ProductItem items);

	// ɾ����Ʒ
	public boolean delete(int id);

	// �޸���Ʒ
	public boolean update(ProductItem items);
	
	public ProductItem selectBycodeId(int codeId);



}
