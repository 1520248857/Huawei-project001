package cn.kgc.dao.impl;

import java.util.ArrayList;
import java.util.List;

import cn.kgc.bean.TotalProduct;
import cn.kgc.dao.TotalProductDao;
import cn.kgc.utils.BaseDao;


public class TotalProductDaoImpl extends BaseDao implements TotalProductDao {

	@Override
	public List<TotalProduct> selectPageItems(long begin, long size) {
		List<TotalProduct> list = new ArrayList<TotalProduct>();
		String sql = "SELECT c.connectionId, p.productName,p.image,p.sales,p.stock,a.ram,a.price,co.color,co.image1,co.image2,co.image3,co.image4,s.seriesName,c.codeId"
				+ " FROM args a,color co,`connection` c ,productItem p,series s"
				+ " WHERE c.productId=p.productId AND a.argsId=c.argsId AND co.colorId=c.colorId AND s.seriesId=c.seriesId limit ?,?";
		Object[] arr = { begin, size };
		try {
			resultSet = executeQuery(sql, arr);
			while (resultSet.next()) {
				TotalProduct totalProduct = new TotalProduct(resultSet.getInt(1), resultSet.getString(2),
						resultSet.getString(3), resultSet.getInt(4), resultSet.getInt(5), resultSet.getString(6),
						resultSet.getBigDecimal(7), resultSet.getString(8), resultSet.getString(9),
						resultSet.getString(10), resultSet.getString(11), resultSet.getString(12),
						resultSet.getString(13), resultSet.getInt(14));
				list.add(totalProduct);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(connection, preparedStatement, resultSet);
		}
		return list;
	}

	@Override
	public long selectCount() {
		int count = 0;
		String sql = "select count(*) from `connection`";
		try {
			resultSet = executeQuery(sql, null);
			if (resultSet.next()) {
				count = resultSet.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(connection, preparedStatement, resultSet);
		}
		return count;
	}

	@Override
	public List<TotalProduct> like(String productString, long begin, long size) {
		String sql = "SELECT c.connectionId,p.productName,p.image,p.sales,p.stock,a.ram,a.price,co.color,co.image1,co.image2,co.image3,co.image4,s.seriesName,c.codeId"
				+ " FROM args a,color co,`connection` c ,productItem p,series s"
				+ " WHERE c.productId=p.productId AND a.argsId=c.argsId AND co.colorId=c.colorId AND s.seriesId=c.seriesId and p.productName like ? limit ?,?";
		Object[] arr = { "%" + productString + "%", begin, size };
		List<TotalProduct> list = new ArrayList<TotalProduct>();
		try {
			resultSet = executeQuery(sql, arr);
			while (resultSet.next()) {
				TotalProduct totalProduct = new TotalProduct(resultSet.getInt(1), resultSet.getString(2),
						resultSet.getString(3), resultSet.getInt(4), resultSet.getInt(5), resultSet.getString(6),
						resultSet.getBigDecimal(7), resultSet.getString(8), resultSet.getString(9),
						resultSet.getString(10), resultSet.getString(11), resultSet.getString(12),
						resultSet.getString(13), resultSet.getInt(14));
				list.add(totalProduct);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(connection, preparedStatement, resultSet);
		}
		return list;
	}

	@Override
	public List<TotalProduct> selectPageItemsByPrice(double min, double max, long begin, long size) {
		String sql = "SELECT c.connectionId,p.productName,p.image,p.sales,p.stock,a.ram,a.price,co.color,co.image1,co.image2,co.image3,co.image4,s.seriesName,c.codeId"
				+ " FROM args a,color co,`connection` c ,productItem p,series s"
				+ " WHERE c.productId=p.productId AND a.argsId=c.argsId AND co.colorId=c.colorId AND s.seriesId=c.seriesId AND a.price BETWEEN ? AND ? limit ?,?";
		List<TotalProduct> list = new ArrayList<TotalProduct>();
		try {
			Object[] arr = { min, max, begin, size };
			resultSet = executeQuery(sql, arr);
			while (resultSet.next()) {
				TotalProduct totalProduct = new TotalProduct(resultSet.getInt(1), resultSet.getString(2),
						resultSet.getString(3), resultSet.getInt(4), resultSet.getInt(5), resultSet.getString(6),
						resultSet.getBigDecimal(7), resultSet.getString(8), resultSet.getString(9),
						resultSet.getString(10), resultSet.getString(11), resultSet.getString(12),
						resultSet.getString(13), resultSet.getInt(14));
				list.add(totalProduct);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(connection, preparedStatement, resultSet);
		}
		return list;
	}

	@Override
	public int getCountByPrice(double min, double max) {
		String sql = "SELECT COUNT(*) FROM `connection` WHERE argsId IN(SELECT argsId FROM args WHERE price BETWEEN ? AND ?)";
		int count = 0;
		try {
			resultSet = executeQuery(sql, new Object[] { min, max });
			if (resultSet.next()) {
				count = resultSet.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(connection, preparedStatement, resultSet);
		}
		return count;
	}

	@Override
	public List<TotalProduct> selectPageItemsAsc(long begin, long size, double min, double max) {
		List<TotalProduct> list = new ArrayList<TotalProduct>();
		String sql = "SELECT c.connectionId,p.productName,p.image,p.sales,p.stock,a.ram,a.price,co.color,co.image1,co.image2,co.image3,co.image4,s.seriesName,c.codeId"
				+ " FROM args a,color co,`connection` c ,productItem p,series s"
				+ " WHERE c.productId=p.productId AND a.argsId=c.argsId AND co.colorId=c.colorId AND s.seriesId=c.seriesId and a.price BETWEEN ? AND ? order by a.price asc limit ?,?";
		Object[] arr = { min, max, begin, size };
		try {
			resultSet = executeQuery(sql, arr);
			while (resultSet.next()) {
				TotalProduct totalProduct = new TotalProduct(resultSet.getInt(1), resultSet.getString(2),
						resultSet.getString(3), resultSet.getInt(4), resultSet.getInt(5), resultSet.getString(6),
						resultSet.getBigDecimal(7), resultSet.getString(8), resultSet.getString(9),
						resultSet.getString(10), resultSet.getString(11), resultSet.getString(12),
						resultSet.getString(13), resultSet.getInt(14));
				list.add(totalProduct);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(connection, preparedStatement, resultSet);
		}
		return list;
	}

	@Override // 按价格倒序排序
	public List<TotalProduct> selectPageItemsDesc(long begin, long size, double min, double max) {
		List<TotalProduct> list = new ArrayList<TotalProduct>();
		String sql = "SELECT c.connectionId,p.productName,p.image,p.sales,p.stock,a.ram,a.price,co.color,co.image1,co.image2,co.image3,co.image4,s.seriesName,c.codeId"
				+ " FROM args a,color co,`connection` c ,productItem p,series s"
				+ " WHERE c.productId=p.productId AND a.argsId=c.argsId AND co.colorId=c.colorId AND s.seriesId=c.seriesId and a.price BETWEEN ? AND ? order by a.price desc limit ?,?";
		Object[] arr = { min, max, begin, size };
		try {
			resultSet = executeQuery(sql, arr);
			while (resultSet.next()) {
				TotalProduct totalProduct = new TotalProduct(resultSet.getInt(1), resultSet.getString(2),
						resultSet.getString(3), resultSet.getInt(4), resultSet.getInt(5), resultSet.getString(6),
						resultSet.getBigDecimal(7), resultSet.getString(8), resultSet.getString(9),
						resultSet.getString(10), resultSet.getString(11), resultSet.getString(12),
						resultSet.getString(13), resultSet.getInt(14));
				list.add(totalProduct);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(connection, preparedStatement, resultSet);
		}
		return list;
	}

	@Override
	public TotalProduct selectByCodeId(int codeId) {
		String sql = "SELECT c.connectionId,p.productName,p.image,p.sales,p.stock,a.ram,a.price,co.color,co.image1,co.image2,co.image3,co.image4,s.seriesName,c.codeId"
				+ " FROM args a,color co,`connection` c ,productItem p,series s"
				+ " WHERE c.productId=p.productId AND a.argsId=c.argsId AND co.colorId=c.colorId AND s.seriesId=c.seriesId AND c.codeId=?";
		TotalProduct totalProduct = null;
		Object[] arr = {codeId};
		try {
			resultSet = executeQuery(sql, arr);
			if(resultSet.next()) {
				totalProduct = new TotalProduct(resultSet.getInt(1), resultSet.getString(2),
						resultSet.getString(3), resultSet.getInt(4), resultSet.getInt(5), resultSet.getString(6),
						resultSet.getBigDecimal(7), resultSet.getString(8), resultSet.getString(9),
						resultSet.getString(10), resultSet.getString(11), resultSet.getString(12),
						resultSet.getString(13), resultSet.getInt(14));
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(connection, preparedStatement, resultSet);
		}
		return totalProduct;
	}

}
