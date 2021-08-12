package cn.kgc.dao.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import cn.kgc.bean.Series;
import cn.kgc.dao.SeriesDao;
import cn.kgc.utils.BaseDao;

public class SeriesDaoImpl extends BaseDao implements SeriesDao {

	List<Series> list = new ArrayList<Series>();

	@Override
	public List<Series> servletAll() {
		String sql = "select * from series";
		resultSet = executeQuery(sql, null);
		try {
			while (resultSet.next()) {
				Series series = new Series(resultSet.getInt(1), resultSet.getString(2), resultSet.getInt(3));
				list.add(series);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeAll(connection, preparedStatement, resultSet);
		}

		return list;
	}

	@Override
	public int save(Series series) {
		int count = -1;
		try {

			String sql = "insert into series values(null,?,?)";
			count = executeUpdate(sql, new Object[] { series.getSeriesName(), series.getCodeId() });
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(connection, preparedStatement, resultSet);
		}

		return count;
	}

	@Override
	public int deleteById(int id) {

		int i = -1;
		String sql = "delete from series where seriesId = ?";
		try {
			i = executeUpdate(sql, new Object[] { id });

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(connection, preparedStatement, resultSet);
		}
		return i;
	}

	@Override
	public int update(Series series) {
		String sql = "update series set seriesName=? codeId=? where seriesId = ?";
		try {
			int i = executeUpdate(sql,
					new Object[] { series.getSeriesName(),series.getCodeId(),series.getSeriesId() });
			return i;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(connection, preparedStatement, resultSet);
		}
		return 0;
	}

	@Override
	public Series queryById(int id) {
		String sql = "select * from series where seriesId = ?";
		Series series = null;
		try {
			resultSet = executeQuery(sql, new Object[] { id });
			if (resultSet.next()) {
				series = new Series(resultSet.getInt(1), resultSet.getString(2),resultSet.getInt(3));
			}
			return series;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(connection, preparedStatement, resultSet);
		}
		return series;

	}

	@Override
	public Series selectByCodeId(int codeId) {
		String sql = "select * from series where codeId = ?";
		Series series = null;
		try {
			resultSet = executeQuery(sql, new Object[] { codeId });
			if (resultSet.next()) {
				series = new Series(resultSet.getInt(1), resultSet.getString(2),resultSet.getInt(3));
			}
			return series;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(connection, preparedStatement, resultSet);
		}
		return series;
	}

}
