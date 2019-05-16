package com.bean.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

@Component
public class DB {
	/**
	 * 1.数据库链接必备属性
	 * 2.Connection属性
	 * 3.init方法
	 * 4.销毁方法
	 */
	private String driver;
	private String url;
	private String username;
	private String password;
	private Connection connection;//���ݿ����Ӷ���
	
	static{
		System.out.println("DB static");
	}
	
	public DB(){
		System.out.println("DB初始化");
//		driver="com.mysql.jdbc.Driver";
//		url="jdbc:mysql://localhost:3306/tedu";
//		username="root";
//		password="hefeng123";
//		Class.forName(driver);
//		connection=DriverManager.getConnection(url,username,password);
	}
	
	public void init() throws SQLException, ClassNotFoundException{
		System.out.println(driver);
		System.out.println("MyConnection");
		//1.加载jdbc的驱动到内容中，JDBC的开发都基于接口
		Class.forName(driver);
		//2.ͨ通过url、username、password进行数据库连接
		connection=DriverManager.getConnection(url,username,password);
		
	}
	
	public void destroy() throws SQLException{
		System.out.println("MyConnection����");
		connection.close();
	}
	
	@Override
	public String toString() {
		return "MyConnection [driver=" + driver + ", url=" + url + ", username=" + username + ", password=" + password
				+ ", connection=" + connection + "]";
	}

	public String getDriver() {
		return driver;
	}

	public void setDriver(String driver) {
		this.driver = driver;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}


	public void setConnection(Connection connection) {
		this.connection = connection;
	}

	public Statement createStatement() throws SQLException {
		// TODO Auto-generated method stub
		return connection.createStatement();
	}

	public void setAutoCommit(boolean b) throws SQLException {
		// TODO Auto-generated method stub
		connection.setAutoCommit(b);
	}

	public PreparedStatement preparedStatement(String sql) throws SQLException {
		// TODO Auto-generated method stub
		return connection.prepareStatement(sql);
	}
}
