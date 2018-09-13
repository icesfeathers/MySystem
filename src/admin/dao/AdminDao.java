package admin.dao;

import admin.entity.Admin;

public interface AdminDao {
	
	public boolean login(String name,String pwd);
	public boolean register(Admin admin);

}
