package cn.kgc.bean;


public class ProductItem {

	private int productId;

	private String productName;

	private String image;

	private int sales;

	private int stock;
	
	private int codeId;
	
	

	public int getCodeId() {
		return codeId;
	}

	public void setCodeId(int codeId) {
		this.codeId = codeId;
	}

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public int getSales() {
		return sales;
	}

	public void setSales(int sales) {
		this.sales = sales;
	}

	public int getStock() {
		return stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}

	

	public ProductItem(int productId, String productName, String image, int sales, int stock, int codeId) {
		super();
		this.productId = productId;
		this.productName = productName;
		this.image = image;
		this.sales = sales;
		this.stock = stock;
		this.codeId = codeId;
	}

	public ProductItem() {
		super();
	}

	@Override
	public String toString() {
		return "ProductItem [productId=" + productId + ", productName=" + productName + ", image=" + image + ", sales="
				+ sales + ", stock=" + stock + ", codeId=" + codeId + "]";
	}

	
}
