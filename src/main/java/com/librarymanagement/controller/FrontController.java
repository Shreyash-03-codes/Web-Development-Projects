package com.librarymanagement.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.librarymanagement.dao.BookDao;
import com.librarymanagement.dao.UserDao;
import com.librarymanagement.entity.Book;
import com.librarymanagement.entity.User;

@Controller
public class FrontController {
	
	
	private BookDao bookDao;
	private UserDao userDao;
	
	
	
	
	
	@Autowired
	public FrontController(BookDao bookDao, UserDao userDao) {
		super();
		this.bookDao = bookDao;
		this.userDao = userDao;
	}
	
	
	@RequestMapping("/login")
	public String login() {
		return "login";
	}
	@RequestMapping("/signup")
	public String signup() {
		return "signup";
	}
	@RequestMapping("/aboutus")
	public String aboutus() {
		return "aboutus";
	}
	@RequestMapping("/contactus")
	public String contactus() {
		return "contactus";
	}
	@RequestMapping("/home")
	public String home() {
		return "home";
	}
	@RequestMapping("/addbook")
	public String addbook() {
		return "addbook";
	}
	@RequestMapping("/updatebook")
	public String updatebook(Model model) {
		 model.addAttribute("books",this.bookDao.allBook());
		 return "updatebook";
	}
	@RequestMapping("/deletebook")
	public String deletebook(Model model) {
		model.addAttribute("books",this.bookDao.allBook());
		return "deletebook";
	}
	@RequestMapping("/borrowbook")
	public String borrowbook(Model model) {
		 model.addAttribute("books",this.bookDao.allBook());
		return "borrowbook";
	}
	@RequestMapping("/returnbook")
	public String returnbook(Model model) {
		 model.addAttribute("books",this.bookDao.allBook());
		return "returnbook";
	}
	@RequestMapping("/searchbook")
	public String searchbook() {
		return "searchbook";
	}

	
	
	
	
	@RequestMapping("/signupForm")
	public String signupForm(@ModelAttribute("user") User user) {
		if(!user.getPassword().equals(user.getConfirmPassword())) {
			return "redirect:/signup";
		}
		this.userDao.setUser(user);
		return "redirect:/login";
	}
	
	@RequestMapping("/loginForm")
	public String loginForm(@RequestParam("email") String email,@RequestParam("password") String password) {
		
		User user=this.userDao.getUser(email);
		if(user!=null && user.getPassword().equals(password)) {
			return "redirect:/home";
		}
		return "redirect:/signup";
	}
	
	
	@RequestMapping("/addbookForm")
	public String addbookForm(@ModelAttribute("book") Book book) {
		this.bookDao.addBook(book);
		return "redirect:/home";
	}
	
	@RequestMapping("/allbooks")
	public String allbooks(Model model) {
		 model.addAttribute("books",this.bookDao.allBook());
		 return "allbooks";
	}
	
	
	@RequestMapping("/updatebookForm/{id}")
	public String updatebookForm(@PathVariable("id") int id,Model model) {
		model.addAttribute("id",id);
		return "updatebookForm";
	}
	
	@RequestMapping("/updatebookForm/updatedbookForm")
	public String updatedbookForm(@ModelAttribute("book") Book book) {
		this.bookDao.updateBook(book);
		return "redirect:/home";
	}
	
	@RequestMapping("/deletedbook/{id}")
	public String deletedbook(@PathVariable("id") int id) {
		this.bookDao.deleteBook(id);
		return "redirect:/home";
	}
	
	
	

	@RequestMapping("/borrowedbook/{id}")
	public String borrowedbook(@PathVariable("id") int id) {
		Book book=this.bookDao.getBook(id);
		book.setAvailable(book.getAvailable()-1);
		this.bookDao.updateBook(book);
		return "redirect:/home";
	}
	@RequestMapping("/returnedbook/{id}")
	public String returnedbook(@PathVariable("id") int id) {
		Book book=this.bookDao.getBook(id);
		book.setAvailable(book.getAvailable()+1);
		this.bookDao.updateBook(book);
		return "redirect:/home";
	}
	
	@RequestMapping("/searchedBooks")
	public String searchedBooks(@RequestParam("key") String key,Model model) {
		List<Book> books=this.bookDao.searchBooks(key.substring(0,1));
		model.addAttribute("books",books);
		return "searchedBooks";
	
	}
	
	
	
}
