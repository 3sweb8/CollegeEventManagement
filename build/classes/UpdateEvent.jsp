<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");//http 1.1
response.setHeader("Pragma", "no-cache");//http 1.0
response.setHeader("Expires", "0");//proxies
if(!(session.getAttribute("username").equals("admin")))
{
	response.sendRedirect("AdminLogin.jsp");
	}%>

<!-- <!DOCTYPE ht>
<html>
<head>
<link rel= "stylesheet" type= "text/css" href= "mystyle.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert events</title>
</head>
<body>

<br><h1>Insert new event</h1><br>
<img src= "abes.jpg"></img><br><br>
<h5>* fields are mandatory</h5>
<form action= "InsertEvent" method= "post" onsubmit= "return validaton()">
Event name* <input type= "text" name= "ename" required><br><br>
Date* <input type= "date" name="dt"   required><br><br>
Venue* <input type= "text" name= "venue" required><br><br>
Fees <input type= "text" name= "fees"><br><br>
About*(not more than 50 characters) <input type= "text" name= "abt" required><br><br>
<input type= "submit" value= "Insert event"><br><br>
</form>
<form action= "Logout" method= "post">
<input type= "submit" value= "Logout">
</form>
</body>
</html>-->
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Update Event</title>
 
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="form.css">
    <!--Stylesheet-->
   
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
        <nav>
            <ul>
                
                <li><a class="btn" href="Main.jsp">Logout</a></li>
            </ul>
        </nav>
       
    </div>
  </div>  
    <div class="background">
        <div class="shape"></div>
        <div class="shape"></div>
    </div>
    <form action="UpdateEvent" method="post" enctype="multipart/form-data">

        <input type="text" placeholder="Event Name*" name="ename" id="username">
	 <input type= "date" name="dt"  placeholder="Date*"  required>
	<input type= "text"  placeholder="Venue* "  name= "venue" required>
	 <input type= "text"  placeholder="Fees* " name= "fees">
<input type= "text"   placeholder="	About*(not more than 50 characters) " name= "abt" required>
       <input placeholder="File" type="file" name="filename">
        <button>Update</button>
       
    </form>
</body>
</html>
