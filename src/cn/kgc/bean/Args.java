package cn.kgc.bean;

import java.math.BigDecimal;

public class Args {

	private int argsId;
	
	private String ram;
	
	private BigDecimal price;
	
	private int codeId;
	
	

	public int getCodeId() {
		return codeId;
	}

	public void setCodeId(int codeId) {
		this.codeId = codeId;
	}

	public int getArgsId() {
		return argsId;
	}

	public void setArgsId(int argsId) {
		this.argsId = argsId;
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

	



	@Override
	public String toString() {
		return "Args [argsId=" + argsId + ", ram=" + ram + ", price=" + price + ", codeId=" + codeId + "]";
	}

	public Args(int argsId, String ram, BigDecimal price, int codeId) {
		super();
		this.argsId = argsId;
		this.ram = ram;
		this.price = price;
		this.codeId = codeId;
	}

	public Args() {
		super();
	}
	
	

}
