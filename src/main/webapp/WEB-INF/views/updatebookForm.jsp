<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Library Management System | Update Book Form</title>

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
			          <a class=" btn btn-block btn-primary text-light" href="/librarymanagement/addbook">Add Book</a>
			        </li>
			        <li class="nav-item mt-3">
			          <a class=" btn btn-block btn-danger" href="/librarymanagement/deletebook">Delete Book</a>
			        </li>
			        <li class="nav-item mt-3">
			          <a class=" btn btn-block btn-warning" href="/librarymanagement/borrowbook">Borrow Book</a>
			        </li>
			        <li class="nav-item mt-3">
			          <a class=" btn btn-block btn-light" href="/librarymanagement/returnbook">Return Book</a>
			        </li>
			        <li class="nav-item mt-3">
			          <a class=" btn btn-block btn-info" href="/librarymanagement/searchbook">Search Book</a>
			        </li>
			        <li class="nav-item mt-3">
			          <a class=" btn btn-block btn-success text-light" href="/librarymanagement/allbooks">All Books</a>
			        </li>
			        
			
		<li class="nav-item">
          <a class="nav-link text-white" href="/librarymanagement/home">🏠 Home</a>
        </li>      
 
        <li class="nav-item">
          <a class="nav-link text-white" href="/librarymanagement/aboutus">ℹ️ About Us</a>
        </li>
        <li class="nav-item mt-3">
          <a class="nav-link text-white" href="/librarymanagement/contactus">📞 Contact Us</a>
        </li>
      </ul>
    </nav>

    <!-- Main Content -->
    <main class="col-md-9 col-lg-10 p-4">
      <h2 class="mb-5">Welcome to Library Management System📚</h2>
      
      <div class="container card bg-secondary ">
      
      	<div class="row">
      	
      		<div class="offset-2 col-8 text-light p-3">
      			<h2 class="text-light" >Update Book<i class="fa-solid fa-square-plus ml-2"></i></h2>
      			<form action="updatedbookForm" method="post">
	      			<div class="form-group">
						    
						    <input type="hidden" class="form-control" id="id" name="id" value="${id }" >
					</div>
				  <div class="form-row">
					  <div class="form-group col-md-6">
					    <label for="name">Book Name</label>
					    <input type="text" class="form-control" id="name" name="name" placeholder="Enter Book Name" required>
					   </div>
					  
					   <div class="form-group col-md-6">
					    <label for="writer">Book Writer Name</label>
					    <input type="text" class="form-control" id="writer" name="writer"  placeholder="Enter Book Writer Name" required>
					  </div>
				   </div>
				 
					 <div class="form-row">
						  <div class="form-group col-md-6">
						    <label for="publication">Publication</label>
						    <input type="text" class="form-control" id="publication" name="publication"  placeholder="Enter Book Publication Name" required>
						   </div>
						  
						   <div class="form-group col-md-6">
						    <label for="available">Book Count</label>
						    <input type="text" class="form-control" id="available" name="available"  placeholder="Enter Book Count To Add" required>
						  </div>
					   </div>
					   
					   <div class="form-group">
					    <label for="description">Book Description</label>
					    <textarea class="form-control" id="description" name="description" rows="3"  placeholder="Enter Book Description" required></textarea>
					  </div>
				  <button type="submit" class="btn btn-success">Update Book</button>
				</form>
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
