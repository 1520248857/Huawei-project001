package cn.kgc.service.impl;

import java.util.List;

import cn.kgc.bean.Address;
import cn.kgc.dao.AddressDao;
import cn.kgc.dao.impl.AddressDaoImpl;
import cn.kgc.service.AddressService;

public class AddressServiceImpl implements AddressService {

	AddressDao addressdao = new AddressDaoImpl();

	@Override
	public List<Address> selectAll() {
		// TODO Auto-generated method stub
		return addressdao.selectAll();
	}

	@Override
	public boolean add(Address address) {
		int a = addressdao.add(address);
		return a > 0 ? true : false;
	}

	@Override
	public Address findByuserid(int userid) {
		// TODO Auto-generated method stub
		return addressdao.findByuserid(userid);
	}

	@Override
	public boolean deleteByaddressid(int addressid) {
		int a = addressdao.deleteByaddressid(addressid);
		return a > 0 ? true : false;
	}

	@Override
	public boolean update(Address address) {
		int num = addressdao.update(address);
		return num>0?true:false;
	}

	@Override
	public Address findByaddressid(int addressid) {
		// TODO Auto-generated method stub
		return addressdao.findByaddressid(addressid);
	}

}
