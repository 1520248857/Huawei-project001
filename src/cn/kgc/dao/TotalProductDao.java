package cn.kgc.dao;

import java.util.List;

import cn.kgc.bean.TotalProduct;

public interface TotalProductDao {
	//获得每一页的集合
	public List<TotalProduct> selectPageItems(long begin, long size) ;
	
	
	public List<TotalProduct> selectPageItemsAsc(long begin, long size, double min, double max) ;
	
	
	public List<TotalProduct> selectPageItemsDesc(long begin, long size, double min, double max) ;
	
	
	//获得数量
	public long selectCount();
	
	
	
	public List<TotalProduct> like(String productString,long begin, long size);
	
	public List<TotalProduct> selectPageItemsByPrice(double min,double max,long begin, long size);
	
	public int 	getCountByPrice(double min,double max);
	
	
	public TotalProduct selectByCodeId(int codeId);

}
