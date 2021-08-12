package cn.kgc.bean;

public class User {

	private Integer userid;
	private String userphone;
	private String password;
	private String emil;

	public User(Integer userid, String userPhone, String password, String emil) {
		super();
		this.userid = userid;
		this.userphone = userPhone;
		this.password = password;
		this.emil = emil;
	}

	public User() {
		super();
	}

	@Override
	public String toString() {
		return "User [userid=" + userid + ", userphone=" + userphone + ", password=" + password + ", emil=" + emil
				+ "]";
	}

	public Integer getUserid() {
		return userid;
	}

	public void setUserid(Integer userid) {
		this.userid = userid;
	}

	public String getUserphone() {
		return userphone;
	}

	public void setUserphone(String userphone) {
		this.userphone = userphone;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmil() {
		return emil;
	}

	public void setEmil(String emil) {
		this.emil = emil;
	}
}
