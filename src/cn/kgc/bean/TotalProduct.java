package cn.kgc.bean;

import java.math.BigDecimal;

public class TotalProduct {
	private int connectionId;
	
	// productItem
	private String productName;
	private String image;
	private int sales;
	private int stock;
	// args
	private String ram;
	private BigDecimal price;
	// color
	private String color;
	private String image1;
	private String image2;
	private String image3;
	private String image4;
	// series
	private String seriesName;
	private int codeId;
	
	
	
	
	public int getCodeId() {
		return codeId;
	}
	public void setCodeId(int codeId) {
		this.codeId = codeId;
	}
	public int getConnectionId() {
		return connectionId;
	}
	public void setConnectionId(int connectionId) {
		this.connectionId = connectionId;
	}
	public int getSales() {
		return sales;
	}
	public void setSales(int sales) {
		this.sales = sales;
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
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public String getRam() {
		return ram;
	}
	public void setRam(String ram) {
		this.ram = ram;
	}
	public BigDecimal getPrice() {
		return price;
	}
	public void setPrice(BigDecimal price) {
		this.price = price;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getImage1() {
		return image1;
	}
	public void setImage1(String image1) {
		this.image1 = image1;
	}
	public String getImage2() {
		return image2;
	}
	public void setImage2(String image2) {
		this.image2 = image2;
	}
	public String getImage3() {
		return image3;
	}
	public void setImage3(String image3) {
		this.image3 = image3;
	}
	public String getImage4() {
		return image4;
	}
	public void setImage4(String image4) {
		this.image4 = image4;
	}
	public String getSeriesName() {
		return seriesName;
	}
	public void setSeriesName(String seriesName) {
		this.seriesName = seriesName;
	}
	public TotalProduct() {
		super();
	}

	public TotalProduct(int connectionId, String productName, String image, int sales, int stock,
			String ram, BigDecimal price, String color, String image1, String image2, String image3, String image4,
			String seriesName, int codeId) {
		super();
		this.connectionId = connectionId;
		
		this.productName = productName;
		this.image = image;
		this.sales = sales;
		this.stock = stock;
		this.ram = ram;
		this.price = price;
		this.color = color;
		this.image1 = image1;
		this.image2 = image2;
		this.image3 = image3;
		this.image4 = image4;
		this.seriesName = seriesName;
		this.codeId = codeId;
	}
	@Override
	public String toString() {
		return "TotalProduct [connectionId=" + connectionId + ", codeId=" + codeId + ", productName=" + productName
				+ ", image=" + image + ", sales=" + sales + ", stock=" + stock + ", ram=" + ram + ", price=" + price
				+ ", color=" + color + ", image1=" + image1 + ", image2=" + image2 + ", image3=" + image3 + ", image4="
				+ image4 + ", seriesName=" + seriesName + "]";
	}

	

	
	

}
