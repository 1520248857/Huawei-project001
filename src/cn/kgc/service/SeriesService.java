package cn.kgc.service;

import java.util.List;

import cn.kgc.bean.Series;

public interface SeriesService {

	// 查询全部
	public List<Series> servletAll();

	// 增加
	public int save(Series series);

	// 删除
	public int deleteById(int id);

	// 修改
	public int update(Series series);

	// 根据Id查询
	public Series queryById(int id);
	public Series  selectByCodeId(int codeId);
}
