<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <html>
<head>
<link rel= "stylesheet" type= "text/css" href= "mystyle.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin login</title>
</head>
<body>
<br><h1>Admin login</h1><br>
<img src= "abes.jpg"></img><br><br>
<form action= "AdminLogin" method= "post"> 
User name: <input type= "text" name= "uname" required><br><br>
Password: <input type= "password" name= "pwd" required><br>
<br><input type= "submit" value= "Login"><br>
</form>
</body>
</html>
-->
<!DOCTYPE html>
<html lang="en">
<head>
    <title> Admin Regitstration</title>
 
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet">
 
    <link rel="stylesheet" href="form.css">
<body>
    <div class="background">
        <div class="shape"></div>
        <div class="shape"></div>
    </div>
    <form action="AdminLogin" method="post">
   <%if(session.getAttribute("username")!=null) {%> <center> <h1 style="color:yellow;"><%out.print(session.getAttribute("message"));
 session.setAttribute("message","");%></h1></center>
 <%} %>
        <h3>Login Here</h3>

        <label for="username">Username</label>
        <input type="text" placeholder="username" name="uname" id="username">

        <label for="password">Password</label>
        <input type="password" placeholder="Password" name="pwd" id="password">

        <button>Log In</button>
        
    </form>
</body>
</html>
