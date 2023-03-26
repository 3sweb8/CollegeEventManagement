<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");//http 1.1
response.setHeader("Pragma", "no-cache");//http 1.0
response.setHeader("Expires", "0");//proxies
if(session.getAttribute("username")==null)
{
	response.sendRedirect("AdminLogin.jsp");
	}
%>
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel= "stylesheet" type= "text/css" href= "mystyle.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update password</title>
</head>
<body>

<br><h1>Update password</h1><br>
<img src= "abes.jpg"></img><br><br>
<form action= "ChngPass" method= "post">
Username:<input type= "text" name= "uname" required><br><br>
Password: <input type= "password" name= "pwd" required><br>
<br><input type= "submit" value= "Update password">
</form>
<form action= "Logout" method= "post">
<br><input type= "submit" value= "Logout">
</form>
</body>
</html>-->
<!DOCTYPE html>
<html lang="en">
<head>

    <title>Glassmorphism login Form Tutorial in html css</title>
 
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="form.css">
<style>
.navbar{
    display :flex;
    align-items: center;
    padding: 20px;
}
nav {
    flex:1;
    text-align: right;
}
nav ul {
    display: inline-block;
    list-style-type:none;
   
    
}
nav   ul li{
    display: inline-block;
    margin-right: 20px;
}
a{
    text-decoration: none;
    color: #555;
}

.container{
    max-width: 1300;
   /* margin: auto;*/
    padding-left:25px;
    padding-right:25px;

}

.btn{
    display:inline;
    background-color: #ff523b;
    color: #fff;
     padding: 8px 30px;
    margin: 0 0;
   
    border-radius: 30px;
    transition: background 0.5s;
}
.btn:hover{
    background-color: #563434;
}
    </style>

  

</head>
<body>


<br><h1>Welcome ${username}</h1>


<div class="container">
    <div class="navbar">
        <div class="logo">
            <img src="images\logo.png" width="125">
            
        </div>
        <nav>
            <ul>
                
                <li><a class="btn" href="Main.jsp">Logout</a></li>
            </ul>
        </nav>
       
    </div>
 
    <div class="background">
        <div class="shape"></div>
        <div class="shape"></div>
    </div>


    <form action="ChngPass" method="post">

        <label for="username">Username</label>
        <input type="text" placeholder="Username" name="uname" id="username">

        <label for="password">Password</label>
        <input type="password" placeholder="Password" name="pwd" id="password">

        <button>Change Password</button><br><br>
         
      
        
    </form>
</body>
</html>