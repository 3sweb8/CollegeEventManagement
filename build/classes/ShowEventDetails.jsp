<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");//http 1.1
response.setHeader("Pragma", "no-cache");//http 1.0
response.setHeader("Expires", "0");//proxies
if(session.getAttribute("username")==null)
{
	response.sendRedirect("StuLogin.jsp");
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel= "stylesheet" type= "text/css" href= "mystyle.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Student</title>
 <style media="screen">
      *,
*:before,
*:after{
    padding: 0;
    margin: 0;
    box-sizing: border-box;
}
body{
    background-color: #080710;
    color:white;
}
.background{
    width: 430px;
    height: 520px;
    position: absolute;
    transform: translate(-50%,-50%);
    left: 50%;
    top: 50%;
}
.background .shape{
    height: 200px;
    width: 200px;
    position: absolute;
    border-radius: 50%;
}
.shape:first-child{
    background: linear-gradient(
        #1845ad,
        #23a2f6
    );
    left: -80px;
    top: -80px;
}
.shape:last-child{
    background: linear-gradient(
        to right,
        #ff512f,
        #f09819
    );
    right: -30px;
    bottom: -80px;
}
div.new{
    height: 520px;
    width: 400px;
    background-color: rgba(255,255,255,0.13);
    position: absolute;
    transform: translate(-50%,-50%);
    top: 50%;
    left: 50%;
    border-radius: 10px;
    backdrop-filter: blur(10px);
    border: 2px solid rgba(255,255,255,0.1);
    box-shadow: 0 0 40px rgba(8,7,16,0.6);
    padding: 50px 35px;
}
form *{
    font-family: 'Poppins',sans-serif;
    color: #ffffff;
    letter-spacing: 0.5px;
    outline: none;
    border: none;
    font-size:50px;
}

form h3{
    font-size: 32px;
    font-weight: 500;
    line-height: 42px;
    text-align: center;
}

label{
    display: block;
    margin-top: 30px;
    font-size: 16px;
    font-weight: 500;
}
input{
    display: block;
    height: 50px;
    width: 100%;
    background-color: rgba(255,255,255,0.07);
    border-radius: 3px;
    padding: 0 10px;
    margin-top: 8px;
    font-size: 16px;
    font-weight: 300;
    color:white;
}
::placeholder{
    color: #e5e5e5;
}
button{
    margin-top: 50px;
    width: 100%;
    background-color:#CCC;
    color:black;
    padding: 15px 0;
    font-size: 18px;
    font-weight: 600;
    border-radius: 5px;
    cursor: pointer;
}
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
    background-color:#CCC;
    color: #0b0b0b;
     padding: 8px 30px;
    margin: 0 0;
   
    border-radius: 30px;
    transition: background 0.5s;
}

.btn1{
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
select{
    border: 1px solid #ff5230;
    padding: 2px;

}
select:focus{
    outline:none;
}
    </style>

  

</head>
<body>


<br><h1>Welcome ${username}</h1>


<div class="container">
    <div class="navbar">
        <nav>
            <ul>
                
                <li><a class="btn1" href="Main.jsp">Logout</a></li>
                 <li><a class="btn1" href="DeleteRec" method="post">Delete Account</a></li>
                
            </ul>
        </nav>
       
    </div>     
    <div class="background">
        <div class="shape"></div>
        <div class="shape"></div>
    </div>
    <div class="new">
    <form action="Showall" method="post"> 
<br>
<input  class="btn" type= "submit" value="Show all upcoming events">
</form>


 <form action="ShowEvents" method="post"> 
<br>
<input class="btn" type= "submit" value="Show all events">
</form>
<table>
<form action= "Showspec" method= "post">

<tr><td><label  for="cat">Search By:</label></td>
<td><select style="height:40px;"  name="ctg">
<option value="name">Name</option>
<option value="date">Date(yyyy-mm-dd)</option>
<option value="venue">Venue</option>
</select></td></tr>
<br>
<tr><td>Value:</td><td><input type="text" name="val"><br></td>
<tr><td><input class="btn" style="color:white;" type= "submit" value= "Search"><br></td></tr>
</form>
</center>
</table>

</div>
 
  
</body>
</html>

 


    