<%@ page  language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%session.setAttribute("username", "") ;
    session.setAttribute("message","");%>
 
<!DOCTYPE html>
<html>
<head>
<title>Main Page</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<style>
body,h1 {font-family: "Raleway", sans-serif}
body, html {height: 100%}
.bgimg {
  background-image: url('WhatsApp Image 2023-02-03 at 2.34.29 PM.jpeg');
  min-height: 100%;
  background-position: center;
  background-size: cover;
}
.btn{
    display:inline-block;
    background-color: blue;
    color: #fff;
    padding: 8px 30px;
    margin: 30px 0;
    border-radius: 30px;
    transition: background 0.5s;
    text-decoration:none;
}
.btn:hover{
    background-color: #563434;
}
</style>
</head>
<body>

<div class="bgimg w3-display-container w3-animate-opacity w3-text-white">
  <div class="w3-display-middle">
    <h1 class="w3-jumbo w3-animate-top">WELCOME TO EGALA</h1>
    <hr class="w3-border-grey" style="margin:auto;width:40%">
  <center>  <a class="btn" href="StuLogin.jsp">STUDENT</a> <a class="btn" style="margin:20px;" href="AdminLogin.jsp">ADMIN</a></center>
  </div>
 
</div>

</body>
</html>
