<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" 
          integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" 
          crossorigin="anonymous">

    <title>Library Management System | Contact Us</title>
  </head>

  <body class="bg-light">

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-secondary">
      <span class="navbar-brand">Library Management System 📚</span>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" 
              aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
    </nav>

    <!-- Contact Us Section -->
    <div class="container my-5">
      <div class="row justify-content-center">
        <div class="col-lg-8">
          <div class="card shadow">
            <div class="card-body">
              <h2 class="card-title text-center text-secondary mb-4">Contact Us</h2>
              <p class="card-text text-center">
                We'd love to hear from you! If you have any questions, feedback, or issues, feel free to contact us using the form below.
              </p>

              <form action="contactusForm" method="post">
                <div class="form-group">
                  <label for="name">Your Name</label>
                  <input type="text" class="form-control" id="name" name="name" placeholder="Enter your full name" required>
                </div>
                <div class="form-group">
                  <label for="email">Email Address</label>
                  <input type="email" class="form-control" id="email" name="email" placeholder="Enter your email" required>
                </div>
                <div class="form-group">
                  <label for="message">Your Message</label>
                  <textarea class="form-control" id="message" name="message" rows="5" placeholder="Type your message here..." required></textarea>
                </div>
                <button type="submit" class="btn btn-secondary btn-block">Send Message</button>
              </form>

              <hr>
              <div class="text-center mt-3">
                <p class="mb-1"><strong>Email:</strong> support@librarysystem.com</p>
                <p class="mb-1"><strong>Phone:</strong> +91-8799825539</p>
                <p><strong>Address:</strong> Library HQ, kolhapur, Maharashtra, India</p>
              </div>
            </div>
          </div>
        </div>
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
