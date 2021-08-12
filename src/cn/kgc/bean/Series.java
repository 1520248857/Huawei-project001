package cn.kgc.bean;

public class Series {

	private int seriesId;
	private String seriesName;
	private  int codeId;
	

	
	

	

	public int getSeriesId() {
		return seriesId;
	}

	public void setSeriesId(int seriesId) {
		this.seriesId = seriesId;
	}

	public String getSeriesName() {
		return seriesName;
	}

	public void setSeriesName(String seriesName) {
		this.seriesName = seriesName;
	}

	public int getCodeId() {
		return codeId;
	}

	public void setCodeId(int codeId) {
		this.codeId = codeId;
	}

	public Series(int seriesId, String seriesName, int codeId) {
		super();
		this.seriesId = seriesId;
		this.seriesName = seriesName;
		this.codeId = codeId;
	}

	public Series() {
		super();
	}

	@Override
	public String toString() {
		return "Series [seriesId=" + seriesId + ", seriesName=" + seriesName + ", codeId=" + codeId + "]";
	}

}
