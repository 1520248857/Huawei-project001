package cn.kgc.service.impl;

import java.util.List;

import cn.kgc.bean.Series;
import cn.kgc.dao.SeriesDao;
import cn.kgc.dao.impl.SeriesDaoImpl;
import cn.kgc.service.SeriesService;

public class SeriesServiceImpl implements SeriesService {

	SeriesDao seriesdao = new SeriesDaoImpl();

	@Override
	public List<Series> servletAll() {
		// TODO Auto-generated method stub
		return seriesdao.servletAll();
	}

	@Override
	public int save(Series series) {
		return seriesdao.save(series);
	}

	@Override
	public int deleteById(int id) {
		// TODO Auto-generated method stub
		return seriesdao.deleteById(id);
	}

	@Override
	public int update(Series series) {
		return seriesdao.update(series);
	}

	@Override
	public Series queryById(int id) {
		// TODO Auto-generated method stub
		return seriesdao.queryById(id);
	}

	@Override
	public Series selectByCodeId(int codeId) {
		return seriesdao.selectByCodeId(codeId);
	}

}
