package cn.kgc.service.impl;

import java.util.List;

import cn.kgc.bean.Color;
import cn.kgc.dao.ColorDao;
import cn.kgc.dao.impl.ColorDaoImpl;
import cn.kgc.service.ColorService;

public class ColorServiceImpl implements ColorService {

	ColorDao colordao = new ColorDaoImpl();

	@Override
	public List<Color> selectAll() {

		return colordao.selectAll();
	}

	@Override
	public int add(Color color) {
		return colordao.add(color);

	}

	@Override
	public int delete(int colorId) {
		int num = colordao.delete(colorId);
		return num;

	}

	@Override
	public int update(Color color) {
		return colordao.update(color);
	}

	@Override
	public Color queryById(int colorId) {
		return colordao.queryById(colorId);
	}

	@Override
	public Color queryByCodeId(int codeId) {
		return colordao.queryByCodeId(codeId);
	}

}
