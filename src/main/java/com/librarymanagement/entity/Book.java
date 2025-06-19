package com.librarymanagement.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "books")
public class Book {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String name;
	private String writer;
	private String publication;
	private String description;
	private int available;
	
	
	public Book() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Book(int id, String name, String writer, String publication, String description, int available) {
		super();
		this.id = id;
		this.name = name;
		this.writer = writer;
		this.publication = publication;
		this.description = description;
		this.available = available;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getWriter() {
		return writer;
	}


	public void setWriter(String writer) {
		this.writer = writer;
	}


	public String getPublication() {
		return publication;
	}


	public void setPublication(String publication) {
		this.publication = publication;
	}


	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}


	public int getAvailable() {
		return available;
	}


	public void setAvailable(int available) {
		this.available = available;
	}
	
	
	
	
}
