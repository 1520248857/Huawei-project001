package cn.kgc.dao;

import java.util.List;

import cn.kgc.bean.Color;

public interface ColorDao {

	// 查询所有
	public List<Color> selectAll();

	// 增加
	public int add(Color color);

	// 删除
	public int delete(int colorId);

	// 修改
	public int update(Color color);

	// 通过id查询
	public Color queryById(int colorId);
	
	
	public Color queryByCodeId(int codeId);
}
