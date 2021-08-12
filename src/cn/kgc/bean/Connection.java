package cn.kgc.bean;

public class Connection {

	private int connectionId;// 关联表id
	private int productId;// 商品id
	private int argsId;// 参数id
	private int seriesId;// 系列id
	private int colorId;// 颜色id
	private int codeId;//商品编码

	public int getConnectionId() {
		return connectionId;
	}

	public int getColorId() {
		return colorId;
	}

	public void setColorId(int colorId) {
		this.colorId = colorId;
	}

	public void setConnectionId(int connectionId) {
		this.connectionId = connectionId;
	}

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public int getArgsId() {
		return argsId;
	}

	public void setArgsId(int argsId) {
		this.argsId = argsId;
	}

	public int getSeriesId() {
		return seriesId;
	}

	public void setSeriesId(int seriesId) {
		this.seriesId = seriesId;
	}
	
	

	public int getCodeId() {
		return codeId;
	}

	public void setCodeId(int codeId) {
		this.codeId = codeId;
	}


	public Connection(int connectionId, int productId, int argsId, int seriesId, int colorId, int codeId) {
		super();
		this.connectionId = connectionId;
		this.productId = productId;
		this.argsId = argsId;
		this.seriesId = seriesId;
		this.colorId = colorId;
		this.codeId = codeId;
	}

	public Connection() {
		super();
	}

	@Override
	public String toString() {
		return "Connection [connectionId=" + connectionId + ", productId=" + productId + ", argsId=" + argsId
				+ ", seriesId=" + seriesId + ", colorId=" + colorId + ", codeId=" + codeId + "]";
	}

	
}
