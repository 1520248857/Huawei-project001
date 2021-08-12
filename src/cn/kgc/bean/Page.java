package cn.kgc.bean;

import java.util.List;

public class Page<T> {

	private static final long PAGE_SIZE=2;

	private long pageNo;

	private long pageSize;
	
	private long pageTotal;
	
	private long pageCount;
	
	private List<T> items;
	public long getPageNo() {
		return pageNo;
	}
	public void setPageNo(long pageNo) {
		this.pageNo = pageNo;
	}
	public long getPageSize() {
		return pageSize;
	}
	public void setPageSize(long pageSize) {
		this.pageSize = pageSize;
	}
	public long getPageTotal() {
		return pageTotal;
	}
	public void setPageTotal(long pageTotal) {
		this.pageTotal = pageTotal;
	}
	public long getPageCount() {
		return pageCount;
	}
	public void setPageCount(long pageCount) {
		this.pageCount = pageCount;
	}
	public List<T> getItems() {
		return items;
	}
	public void setItems(List<T> items) {
		this.items = items;
	}
	
	public Page(long pageNo, long pageSize, long pageTotal, long pageCount, List<T> items) {
		super();
		this.pageNo = pageNo;
		this.pageSize = pageSize;
		this.pageTotal = pageTotal;
		this.pageCount = pageCount;
		this.items = items;
	}
	public Page() {
		super();
	}
	@Override
	public String toString() {
		return "Page [pageNo=" + pageNo + ", pageSize=" + pageSize + ", pageTotal=" + pageTotal + ", pageCount="
				+ pageCount + ", items=" + items + "]";
	}
	
	
	
	

}
