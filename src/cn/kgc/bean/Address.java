package cn.kgc.bean;

public class Address {

	private int addressid;
	private String province;
	private String city;
	private String town;
	private String place;
	private int isDefault;
	private int userid;

	public Address() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Address(int addressid, String province, String city, String town, String place, int isDefault, int userid) {
		super();
		this.addressid = addressid;
		this.province = province;
		this.city = city;
		this.town = town;
		this.place = place;
		this.isDefault = isDefault;
		this.userid = userid;
	}

	@Override
	public String toString() {
		return "Address [addressid=" + addressid + ", province=" + province + ", city=" + city + ", town=" + town
				+ ", place=" + place + ", isDefault=" + isDefault + ", userid=" + userid + "]";
	}

	public int getAddressid() {
		return addressid;
	}

	public void setAddressid(int addressid) {
		this.addressid = addressid;
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getTown() {
		return town;
	}

	public void setTown(String town) {
		this.town = town;
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	public int getIsDefault() {
		return isDefault;
	}

	public void setIsDefault(int isDefault) {
		this.isDefault = isDefault;
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

}
