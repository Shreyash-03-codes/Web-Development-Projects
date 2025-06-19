package com.librarymanagement.dao;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.librarymanagement.entity.Book;

@Repository
public class BookDaoImpl implements BookDao{
	
	@Autowired
	private HibernateTemplate hibernateTemplate;
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public BookDaoImpl() {
		super();
		// TODO Auto-generated constructor stub
	}
	

	public BookDaoImpl(HibernateTemplate hibernateTemplate, JdbcTemplate jdbcTemplate) {
		super();
		this.hibernateTemplate = hibernateTemplate;
		this.jdbcTemplate = jdbcTemplate;
	}
	
	
	
	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}


	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}


	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}


	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}


	@Transactional
	public int addBook(Book book) {
		return (Integer)this.hibernateTemplate.save(book);
	}
	@Transactional
	public void updateBook(Book book) {
		this.hibernateTemplate.update(book);
	}
	@Transactional
	public void deleteBook(int id) {
		Book book= this.hibernateTemplate.get(Book.class, id);
		this.hibernateTemplate.delete(book);
	}
	@Transactional
	public Book getBook(int id) {
		return this.hibernateTemplate.get(Book.class,id);
	}
	@Transactional
	public List<Book> searchBooks(String key) {
		String query="SELECT * FROM books WHERE name LIKE ?;";
		List<Book> books=this.jdbcTemplate.query(
				query, 
			(rs,rowNum) -> {
				Book book=new Book();
				book.setId(rs.getInt("id"));
				book.setName(rs.getString("name"));
				book.setWriter(rs.getString("writer"));
				book.setPublication(rs.getString("publication"));
				book.setDescription(rs.getString("description"));
				book.setAvailable(rs.getInt("available"));
				return book;
			},
			key+"%"	
		);
		return books;	
	}
	@Transactional
	public List<Book> allBook(){
		return this.hibernateTemplate.loadAll(Book.class);
	}
}
