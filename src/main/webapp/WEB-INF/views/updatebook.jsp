<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Library Management System | Update Book</title>

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
        integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
        crossorigin="anonymous">
        
        <!-- Font Awesome CDN -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" integrity="sha512-..." crossorigin="anonymous" referrerpolicy="no-referrer" />
        
</head>
<body>

<div class="container-fluid">
  <div class="row">
    
    <!-- Sidebar -->
    <nav class="col-md-3 min-vh-100 col-lg-2 bg-dark text-white p-3">
      <h4 class="text-white mb-4">📚 Library</h4>
      <ul class="nav flex-column">
      
      				<li class="nav-item mt-3">
			          <a class=" btn btn-block btn-success text-light" href="addbook">Add Book</a>
			        </li>
			        
			        <li class="nav-item mt-3">
			          <a class=" btn btn-block btn-danger" href="deletebook">Delete Book</a>
			        </li>
			        <li class="nav-item mt-3">
			          <a class=" btn btn-block btn-warning" href="borrowbook">Borrow Book</a>
			        </li>
			        <li class="nav-item mt-3">
			          <a class=" btn btn-block btn-light" href="returnbook">Return Book</a>
			        </li>
			        <li class="nav-item mt-3">
			          <a class=" btn btn-block btn-info" href="searchbook">Search Book</a>
			        </li>
			        <li class="nav-item mt-3">
			          <a class=" btn btn-block btn-primary text-light" href="allbooks">All Books</a>
			        </li>
			        
			      
 	 <li class="nav-item">
          <a class="nav-link text-white" href="home">🏠 Home</a>
        </li>  
        <li class="nav-item">
          <a class="nav-link text-white" href="aboutus">ℹ️ About Us</a>
        </li>
        <li class="nav-item mt-3">
          <a class="nav-link text-white" href="contactus">📞 Contact Us</a>
        </li>
      </ul>
    </nav>

    <!-- Main Content -->
    <main class="col-md-9 col-lg-10 p-4">
      <h2 class="mb-5">Welcome to Library Management System📚</h2>
      
      <div class="container card bg-secondary ">
      
      	<div class="row">
      	
      		<div class="offset-1 col-10 text-light p-3">
      			<h2 class="text-light">Select Books <i class="fas fa-book ml-2"></i></h2>
				<table class="table table-bordered table-hover bg-light text-dark">
				  <thead class="thead-dark">
				    <tr>
				      <th scope="col">Book ID</th>
				      <th scope="col">Book Name</th>
				      <th scope="col">Book Writer</th>
				      <th scope="col">Publication</th>
				      <th scope="col">Available Books</th>
				      <th scope="col">Description</th>
				      <th scope="col">Click To Update</th>
				      
				    </tr>
				  </thead>
				  <tbody>
				    <c:forEach var="book" items="${books}">
				      <tr>
				        <th>BOOK${book.id}</th>
				        <td>${book.name}</td>
				        <td>${book.writer}</td>
				        <td>${book.publication}</td>
				        <td>${book.available}</td>
				        <td>${book.description}</td>
				        <td><a href="updatebookForm/${book.id }"><i class="fa-solid fa-pen-to-square" ></i></a></td>
				      </tr>
				    </c:forEach>
				  </tbody>
				</table>

      		</div>
      	</div>
      
      </div>
      
    </main>

  </div>
</div>

<!-- Bootstrap JS + jQuery -->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
        crossorigin="anonymous"></script>

</body>
</html>
