package cn.kgc.dao;

import java.util.List;

import cn.kgc.bean.ProductItem;

public interface ProductItemDao {

	// ��ѯȫ��
	public List<ProductItem> selectAll();

	// ����id��ѯ
	public ProductItem selectById(int id);

	// �����Ʒ
	public int add(ProductItem items);

	// ɾ����Ʒ
	public int delete(int id);

	// �޸���Ʒ
	public int update(ProductItem items);
	
	public ProductItem selectBycodeId(int codeId);

}
