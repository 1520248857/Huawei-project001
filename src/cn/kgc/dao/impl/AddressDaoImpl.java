package cn.kgc.dao.impl;

import java.util.ArrayList;
import java.util.List;

import cn.kgc.bean.Address;
import cn.kgc.dao.AddressDao;
import cn.kgc.utils.BaseDao;

public class AddressDaoImpl extends BaseDao implements AddressDao {

	@Override
	public List<Address> selectAll() {
		List<Address> list = new ArrayList<Address>();
		String sql = "select * from address";
		Address address = null;
		try {
			resultSet = executeQuery(sql, null);
			while (resultSet.next()) {
				address = new Address(resultSet.getInt(1), resultSet.getString(2), resultSet.getString(3),
						resultSet.getString(4), resultSet.getString(5), resultSet.getInt(6), resultSet.getInt(7));
				list.add(address);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(connection, preparedStatement, resultSet);
		}
		return list;
	}

	@Override
	public int add(Address address) {
		int result = 0;
		String sql = "insert into address(`addressid`,`province`,`city`,`town`,`place`,`isDefault`,`userid`) values(null,?,?,?,?,?,?)";
		try {
			result = executeUpdate(sql, new Object[] { address.getProvince(), address.getCity(), address.getTown(),
					address.getPlace(), address.getIsDefault(), address.getUserid() });
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(connection, preparedStatement, resultSet);
		}
		return result;
	}

	@Override
	public Address findByuserid(int userid) {
		Address address = null;
		String sql = "select * from address where userid=?";
		try {
			resultSet = executeQuery(sql, new Object[] { userid });
			if (resultSet.next()) {
				address = new Address(resultSet.getInt(1), resultSet.getString(2), resultSet.getString(3),
						resultSet.getString(4), resultSet.getString(5), resultSet.getInt(6), resultSet.getInt(7));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(connection, preparedStatement, resultSet);
		}
		return address;
	}

	@Override
	public int deleteByaddressid(int addressid) {
		int result = 0;
		String sql = "delete from address where addressid=?";
		try {
			result = executeUpdate(sql, new Object[] { addressid });
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(connection, preparedStatement, resultSet);
		}
		return result;
	}

	@Override
	public int update(Address address) {
		int num = 0;
		String sql = "update address set province=? , city=? , town=? , place=? , isDefault=? , userid=? where addressid=?";
		try {
			num = executeUpdate(sql, new Object[] { address.getProvince(), address.getCity(), address.getTown(),
					address.getPlace(), address.getIsDefault(), address.getUserid() ,address.getAddressid()});
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(connection, preparedStatement, resultSet);
		}
		return num;
	}

	@Override
	public Address findByaddressid(int addressid) {
		Address address = null;
		String sql = "select * from address where addressid=?";
		try {
			resultSet = executeQuery(sql, new Object[] { addressid });
			if (resultSet.next()) {
				address = new Address(resultSet.getInt(1), resultSet.getString(2), resultSet.getString(3),
						resultSet.getString(4), resultSet.getString(5), resultSet.getInt(6), resultSet.getInt(7));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(connection, preparedStatement, resultSet);
		}
		return address;
	}

}
