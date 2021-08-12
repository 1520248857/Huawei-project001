package cn.kgc.dao.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import cn.kgc.bean.Color;
import cn.kgc.dao.ColorDao;
import cn.kgc.utils.BaseDao;

public class ColorDaoImpl extends BaseDao implements ColorDao {

	@Override
	public List<Color> selectAll() {
		String sql = "select * from color";
		Object[] params = {};
		List<Color> list = new ArrayList<Color>();
		try {
			resultSet = executeQuery(sql, params);
			while (resultSet.next()) {
				Color color = new Color(resultSet.getInt(1), resultSet.getString(2), resultSet.getString(3),
						resultSet.getString(4), resultSet.getString(5), resultSet.getString(6), resultSet.getInt(7));
				list.add(color);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeAll(connection, preparedStatement, resultSet);
		}
		return list;
	}

	@Override
	public int add(Color color) {
		int count = -1;
		String sql = "insert into color values(null,?,?,?,?,?,?)";
		try {
			Object[] params = { color.getColor(), color.getImage1(), color.getImage2(), color.getImage3(),
					color.getImage4(),color.getCodeId() };
			count = executeUpdate(sql, params);

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeAll(connection, preparedStatement, resultSet);
		}

		return count;
	}

	@Override
	public int delete(int colorId) {
		String sql = "delete from `color` where colorId=?";
		int result = 0;
		try {
			result = executeUpdate(sql, new Object[] { colorId });
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(connection, preparedStatement, resultSet);
		}
		return result;
	}

	@Override
	public int update(Color color) {
		int num = 0;
		String sql = "update color set color=?, image1=?, image2=?, image3=?, image4=?, codeId=? where colorId=?";
		Object[] params = { color.getColor(), color.getImage1(), color.getImage2(), color.getImage3(),
				color.getImage4(),color.getCodeId(),color.getColorId() };
		try {
			num = executeUpdate(sql, params);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(connection, preparedStatement, resultSet);
		}
		return num;

	}

	@Override
	public Color queryById(int colorId) {
		String sql = "select * from `color` where colorId=?;";
		Color color = null;
		try {
			resultSet = executeQuery(sql, new Object[] { colorId });
			while (resultSet.next()) {
				color = new Color(resultSet.getInt(1), resultSet.getString(2), resultSet.getString(3),
						resultSet.getString(4), resultSet.getString(5), resultSet.getString(6),resultSet.getInt(7));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(connection, preparedStatement, resultSet);
		}
		return color;

	}

	@Override
	public Color queryByCodeId(int codeId) {
		String sql = "select * from color where codeId=?";
		Object[] arr = {codeId};
		Color color = null;
		try {
			resultSet = executeQuery(sql, arr);
			if(resultSet.next()) {
				color = new Color(resultSet.getInt(1), resultSet.getString(2), resultSet.getString(3),
						resultSet.getString(4), resultSet.getString(5), resultSet.getString(6),resultSet.getInt(7));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(connection, preparedStatement, resultSet);
		}
		
		return color;
	}
	
}
