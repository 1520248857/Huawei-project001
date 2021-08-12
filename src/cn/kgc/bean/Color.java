package cn.kgc.bean;

public class Color {

	private int colorId;
	private String color;
	private String image1;
	private String image2;
	private String image3;
	private String image4;
	private int codeId;
	
	

	public int getCodeId() {
		return codeId;
	}

	public void setCodeId(int codeId) {
		this.codeId = codeId;
	}

	public int getColorId() {
		return colorId;
	}

	public void setColorId(int colorId) {
		this.colorId = colorId;
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

	

	public Color(int colorId, String color, String image1, String image2, String image3, String image4, int codeId) {
		super();
		this.colorId = colorId;
		this.color = color;
		this.image1 = image1;
		this.image2 = image2;
		this.image3 = image3;
		this.image4 = image4;
		this.codeId = codeId;
	}

	public Color() {
		super();
	}

	@Override
	public String toString() {
		return "Color [colorId=" + colorId + ", color=" + color + ", image1=" + image1 + ", image2=" + image2
				+ ", image3=" + image3 + ", image4=" + image4 + ", codeId=" + codeId + "]";
	}


}
