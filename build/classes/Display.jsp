<%@ page import="java.sql.ResultSet" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
    <% ResultSet rs=(ResultSet)session.getAttribute("result");
    %>
<!DOCTYPE html>
<html>
<head>
  <title>Events</title>
  <link href="https://fonts.googleapis.com/css?family=Bentham|Playfair+Display|Raleway:400,500|Suranna|Trocchi" rel="stylesheet">
  <link rel="stylesheet" href="display.css">
<style>
.main{
  display: flex;
  flex-wrap: wrap;
}
@media (max-width: 920px) {
  .wrapper {
    flex: 1 21%;
  }
}
</style>
    
</head>

<body>

<section class="main">

<% while(rs.next()){ %>


  <div class="wrapper">
    <div class="product-img">
      <img src="images/<%= rs.getString(6) %> " width="327px" height="420px"> 
    </div>
    <div class="product-info">
      <div class="product-text">
        <h1><%= rs.getString(1)%></h1>
        <h2><%= rs.getString(2)%></h2>
         <h2><%= rs.getString(3)%></h2>
        <p><%= rs.getString(5)%></p></div>
      <div class="product-price-btn">
        <p><span><%= rs.getString(4)%></span>$</p>
        
      </div>
    </div>
  </div>
  <%} %>
  </section>

</body>

</html>