<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

    <!-- Font Awesome -->
    <title>Library Management System | Sign Up</title>
  </head>
  <body class="bg-light">

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-secondary">
      <span class="navbar-brand">Library Management System 📚</span>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ml-auto">
         <li class="nav-item">
            <a class="nav-link text-light mr-1" href="aboutus"> About Us</a>
          </li>
          
         <li class="nav-item">
            <a class="nav-link text-light mr-3" href="contactus"> Contact Us</a>
          </li>
 
          <li class="nav-item">
            <a class="nav-link text-light btn btn-outline-success mr-5" href="login"> Log In</a>
          </li>
         
          
        </ul>
      </div>
    </nav>

   <div class="container">

        <!-- Login Form -->
        <div class="offset-md-4 col-md-5 card bg-secondary p-3 text-light mt-5">
          <h2 class="mb-3"> Sign Up ➡️</h2>
          <form action="signupForm" method="post">
          <div class="form-group mb-2">
              <label for="name">Full Name</label>
              <input type="text" class="form-control" id="name" name="fullName" placeholder="Enter Full Name" required>
            </div>
            <div class="form-group mb-2">
              <label for="email">Email address</label>
              <input type="email" class="form-control" id="email" name="email" placeholder="Enter email" required>
            </div>
            <div class="form-group mb-2">
              <label for="password">Password</label>
              <input type="password" class="form-control" id="password" name="password" placeholder="Password" required>
            </div>
            <div class="form-group mb-4">
              <label for="ConfirmPassword">Confirm Password</label>
              <input type="password" class="form-control" id="ConfirmPassword" name="ConfirmPassword" placeholder="Confirm Password" required>
            </div>

            <button type="submit" class="btn btn-success btn-block mb-2">Sign Up</button>
             
            <a href="login" class="text-light ">already i have account ?</a>
          </form>
        </div>

      </div>
 
    <!-- Bootstrap JS + jQuery -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
  </body>
</html>
