package cn.kgc.dao;

import java.util.List;

import cn.kgc.bean.Color;

public interface ColorDao {

	// ��ѯ����
	public List<Color> selectAll();

	// ����
	public int add(Color color);

	// ɾ��
	public int delete(int colorId);

	// �޸�
	public int update(Color color);

	// ͨ��id��ѯ
	public Color queryById(int colorId);
	
	
	public Color queryByCodeId(int codeId);
}
