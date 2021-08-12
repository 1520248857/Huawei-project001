package cn.kgc.service.impl;

import java.util.List;

import cn.kgc.bean.Page;
import cn.kgc.bean.ProductItem;
import cn.kgc.bean.TotalProduct;
import cn.kgc.dao.TotalProductDao;
import cn.kgc.dao.impl.TotalProductDaoImpl;
import cn.kgc.service.TotalProductService;

public class TotalProductServiceImpl implements TotalProductService {

	private TotalProductDao totalProductDao = new TotalProductDaoImpl();

	@Override
	public Page<TotalProduct> page(int pageNo, int pageSize) {
		Page<TotalProduct> page = new Page<TotalProduct>();
		page.setPageSize(pageSize);
		long pageCount = totalProductDao.selectCount();
		page.setPageCount(pageCount);
		long pageTotal = pageCount % pageSize == 0 ? pageCount / pageSize : pageCount / pageSize + 1;
		page.setPageTotal(pageTotal);
		page.setPageNo(pageNo);
		List<TotalProduct> items = totalProductDao.selectPageItems((page.getPageNo() - 1) * pageSize, pageSize);
		page.setItems(items);
		return page;
	}

	@Override
	public Page<TotalProduct> like(String productString, int pageNo, int pageSize) {
		Page<TotalProduct> page = new Page<TotalProduct>();
		page.setPageSize(pageSize);
		long pageCount = totalProductDao.selectCount();
		page.setPageCount(pageCount);
		long pageTotal = pageCount % pageSize == 0 ? pageCount / pageSize : pageCount / pageSize + 1;
		page.setPageTotal(pageTotal);
		page.setPageNo(pageNo);
		List<TotalProduct> items =totalProductDao.like(productString,(page.getPageNo() - 1) * pageSize, pageSize);
		page.setItems(items);
		return page;
	}

	@Override
	public Page<TotalProduct> pageByPrice(int pageNo, int pageSize, double min, double max) {
		Page<TotalProduct> p = new Page<TotalProduct>();
		p.setPageSize(pageSize);
		long getcount = totalProductDao.getCountByPrice(min, max);
		p.setPageCount(getcount);
		long totalCount = getcount % pageSize == 0 ? getcount / pageSize : getcount / pageSize + 1;
		p.setPageTotal(totalCount);
		p.setPageNo(pageNo);
		List<TotalProduct> items = totalProductDao.selectPageItemsByPrice(min, max, (p.getPageNo() - 1) * pageSize,
				pageSize);
		p.setItems(items);
		return p;
	}

	@Override
	public Page<TotalProduct> pageAsc(int pageNo, int pageSize, double min, double max) {
		Page<TotalProduct> page = new Page<TotalProduct>();
		page.setPageSize(pageSize);
		long pageCount = totalProductDao.selectCount();
		page.setPageCount(pageCount);
		long pageTotal = pageCount % pageSize == 0 ? pageCount / pageSize : pageCount / pageSize + 1;
		page.setPageTotal(pageTotal);
		page.setPageNo(pageNo);
		List<TotalProduct> items = totalProductDao.selectPageItemsAsc((page.getPageNo() - 1) * pageSize, pageSize,min,max);
		page.setItems(items);
		return page;
	}

	@Override
	public Page<TotalProduct> pageDesc(int pageNo, int pageSize, double min, double max) {
		Page<TotalProduct> page = new Page<TotalProduct>();
		page.setPageSize(pageSize);
		long pageCount = totalProductDao.selectCount();
		page.setPageCount(pageCount);
		long pageTotal = pageCount % pageSize == 0 ? pageCount / pageSize : pageCount / pageSize + 1;
		page.setPageTotal(pageTotal);
		page.setPageNo(pageNo);
		List<TotalProduct> items = totalProductDao.selectPageItemsDesc((page.getPageNo() - 1) * pageSize, pageSize,min,max);
		page.setItems(items);
		return page;
	}

	@Override
	public TotalProduct selectByCodeId(int codeId) {
		return totalProductDao.selectByCodeId(codeId);
	}
	
	

}
