package cn.kgc.dao;

import java.util.List;

import cn.kgc.bean.Series;

public interface SeriesDao {

	public List<Series> servletAll();

	public int save(Series series);

	public int deleteById(int id);

	public int update(Series series);

	public Series queryById(int id);
	public Series  selectByCodeId(int codeId);
}
