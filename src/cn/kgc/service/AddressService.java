package cn.kgc.service;

import java.util.List;

import cn.kgc.bean.Address;

public interface AddressService {

	public List<Address> selectAll();

	public boolean add(Address address);

	public Address findByuserid(int userid);

	public boolean deleteByaddressid(int addressid);

	public boolean update(Address address);

	public Address findByaddressid(int addressid);
}
