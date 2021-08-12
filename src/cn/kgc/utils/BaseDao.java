package cn.kgc.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class BaseDao {

	protected Connection connection = null;
	protected PreparedStatement preparedStatement = null;
	protected ResultSet resultSet = null;

	private String url = "jdbc:mysql://localhost:3306/item";
	private String user = "root";
	private String password = "root";
	private String className = "com.mysql.jdbc.Driver";

	public Connection getConnection() {
		try {
			Class.forName(className);
			connection = DriverManager.getConnection(url, user, password);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return connection;
	}

	public void closeAll(Connection connection, PreparedStatement preparedStatement, ResultSet resultSet) {
		try {
			if (resultSet != null) {
				resultSet.close();
			}
			if (preparedStatement != null) {
				preparedStatement.close();
			}
			if (connection != null) {
				connection.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public ResultSet executeQuery(String sql, Object arr[]) {
		try {
			connection = getConnection();
			preparedStatement = connection.prepareStatement(sql);
			if (arr != null) {
				for (int i = 0; i < arr.length; i++) {
					preparedStatement.setObject(i + 1, arr[i]);
				}
			}
			resultSet = preparedStatement.executeQuery();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return resultSet;
	}

	public int executeUpdate(String sql, Object arr[]) {
		int count = 0;
		try {
			connection = getConnection();
			preparedStatement = connection.prepareStatement(sql);
			if (arr != null) {
				for (int i = 0; i < arr.length; i++) {
					preparedStatement.setObject(i + 1, arr[i]);
				}
			}
			count = preparedStatement.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return count;
	}

}
