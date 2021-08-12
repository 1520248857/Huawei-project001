package cn.kgc.bean;

public class Manager {

	private int managerId;
	private String managerName;
	private String password;
	public int getManagerId() {
		return managerId;
	}
	public void setManagerId(int managerId) {
		this.managerId = managerId;
	}
	public String getManagerName() {
		return managerName;
	}
	public void setManagerName(String managerName) {
		this.managerName = managerName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Manager(int managerId, String managerName, String password) {
		super();
		this.managerId = managerId;
		this.managerName = managerName;
		this.password = password;
	}
	public Manager() {
		super();
	}
	@Override
	public String toString() {
		return "Manager [managerId=" + managerId + ", managerName=" + managerName + ", password=" + password + "]";
	}
}
