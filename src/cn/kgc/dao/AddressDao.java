package cn.kgc.dao;

import java.util.List;

import cn.kgc.bean.Address;

public interface AddressDao {

	public List<Address> selectAll();

	public int add(Address address);

	public Address findByuserid(int userid);

	public int deleteByaddressid(int addressid);

	public int update(Address address);

	public Address findByaddressid(int addressid);
}
