package com.librarymanagement.dao;

import java.util.List;

import com.librarymanagement.entity.Book;

public interface BookDao {
	public int addBook(Book book);
	public void updateBook(Book book);
	public void deleteBook(int id);
	public Book getBook(int id);
	public List<Book> searchBooks(String key);
	public List<Book> allBook();
}
