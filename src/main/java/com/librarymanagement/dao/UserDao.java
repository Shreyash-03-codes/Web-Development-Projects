package com.librarymanagement.dao;

import com.librarymanagement.entity.User;

public interface UserDao {
	
	public String setUser(User user);
	public User getUser(String id);
	
}
