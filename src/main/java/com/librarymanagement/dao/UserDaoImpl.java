package com.librarymanagement.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.librarymanagement.entity.User;

@Repository
public class UserDaoImpl implements UserDao {
	
	@Autowired
	private HibernateTemplate hibernateTemplate;

	public UserDaoImpl() {

	}
	
	public UserDaoImpl(HibernateTemplate hibernateTemplate) {
		super();
		this.hibernateTemplate = hibernateTemplate;
	}

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	
	@Transactional
	public String setUser(User user) {
		return (String)this.hibernateTemplate.save(user);
	}
	@Transactional
	public User getUser(String id) {
		User user=this.hibernateTemplate.get(User.class, id);
		return user;
	}
}
