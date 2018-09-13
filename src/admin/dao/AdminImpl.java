package admin.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import admin.entity.Admin;
import util.DBconn;

public class AdminImpl implements AdminDao {

	@Override
	public boolean login(String name, String pwd) {
		// TODO Auto-generated method stub
		boolean flag = false;
		DBconn.init();
		String sql = "select * from pass where name='" + name + "' and pwd='" + pwd + "'";
		ResultSet rs = DBconn.selectSql(sql);
		try {
			while (rs.next()) {
				if (rs.getString("name").equals(name) && rs.getString("pwd").equals(pwd)) {
					flag = true;
				}
			}
			DBconn.closeConn();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return flag;
	}

	@Override
	public boolean register(Admin admin) {
		// TODO Auto-generated method stub
		return false;
	}

}
