package cn.kgc.service;

import java.util.List;

import cn.kgc.bean.Page;
import cn.kgc.bean.TotalProduct;

public interface TotalProductService {

	public Page<TotalProduct> page(int pageNo, int pageSize);

	public  Page<TotalProduct> like(String productString, int pageNo, int pageSize);
	
	public Page<TotalProduct> pageByPrice(int pageNo, int pageSize, double min, double max); 
	
	Page<TotalProduct> pageDesc(int pageNo, int pageSize, double min, double max);

	Page<TotalProduct> pageAsc(int pageNo, int pageSize, double min, double max);
	
	public TotalProduct selectByCodeId(int codeId);

}
